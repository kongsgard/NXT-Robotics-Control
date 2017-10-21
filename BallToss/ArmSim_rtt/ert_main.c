/*
 * File: ert_main.c
 *
 * Code generated for Simulink model 'ArmSim'.
 *
 * Model version                  : 1.358
 * Simulink Coder version         : 8.6 (R2014a) 27-Dec-2013
 * TLC version                    : 8.6 (Jan 30 2014)
 * C/C++ source code generated on : Fri Oct 20 18:30:37 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ArmSim.h"
#include "kernel.h"
#include "kernel_id.h"
#include "ecrobot_interface.h"
#include "ecrobot_private.h"
#include <ext_work.h>                  /* External mode header files */
#include <ext_svr.h>
#include <ext_share.h>
#include <updown.h>

int tick = 0;
double period = 0.01;
int sampleTime = 0;
int or_ext = 0;
int or_mdl = 0;
int timesup = 0;
DeclareEvent(TIMESUP);
DeclareTask(OSEK_Task_main);
DeclareTask(OSEK_Task_background);
void user_1ms_isr_type2(void)
{
  tick++;
  if (tick >= sampleTime) {
    tick = 0;
    or_ext++;
    or_mdl++;
    SetEvent(OSEK_Task_main, TIMESUP);
    timesup = 0;
  }
}

void ecrobot_device_initialize(void)
{
  int st;
  int last_act_time = 0;
  while (ecrobot_get_bt_status() != BT_STREAM) {
    st = systick_get_ms();
    if (st >= last_act_time + 10) {
      ecrobot_poll_nxtstate();
      last_act_time = st;
      ecrobot_init_bt_slave("fei");
      if (ecrobot_get_button_state() == (EXIT_PRESSED)) {
        ecrobot_device_terminate();
        display_clear(1);
        systick_wait_ms(10);
        nxt_lcd_power_down();          /* reset LCD hardware */
        systick_wait_ms(10);
        while (1) {
          nxt_avr_power_down();
        }
      }
    }
  }

  /* initialize external mode */
  rtParseArgsForExtMode(0, NULL);
  ArmSim_initialize();

  /* External mode */
  rtSetTFinalForExtMode(&rtmGetTFinal(ArmSim_M));
  rtExtModeCheckInit(2);

  {
    boolean_T rtmStopReq = false;
    rtExtModeWaitForStartPkt(ArmSim_M->extModeInfo, 2, &rtmStopReq);
    if (rtmStopReq) {
      rtmSetStopRequested(ArmSim_M, true);
    }
  }

  rtERTExtModeStartMsg();
}

TASK(OSEK_Task_main)
{
  sampleTime = (int)(period/0.001);
  display_clear(1);
  display_goto_xy(0, 2);
  display_string("I am running ...");
  display_goto_xy(0, 5);
  display_string("-----------------");
  display_goto_xy(0, 6);
  display_string("ArmSim");
  display_goto_xy(0, 7);
  display_string("-----------------");
  while (1) {
    WaitEvent(TIMESUP);
    ClearEvent(TIMESUP);
    ArmSim_output();

    /* Get model outputs here */

    /* External mode */
    rtExtModeUploadCheckTrigger(2);

    {                                  /* Sample time: [0.0s, 0.0s] */
      rtExtModeUpload(0, ArmSim_M->Timing.t[0]);
    }

    {                                  /* Sample time: [0.01s, 0.0s] */
      rtExtModeUpload(1, ((ArmSim_M->Timing.clockTick1) * 0.01));
    }

    ArmSim_update();
    rtExtModeCheckEndTrigger();
    or_mdl = 0;
  }

  TerminateTask();
}

TASK(OSEK_Task_background)
{
  int status;
  int link_status = 0;
  while ((rtmGetErrorStatus(ArmSim_M) == (NULL)) && !rtmGetStopRequested
         (ArmSim_M)) {
    status = ecrobot_get_bt_status();
    if (status != BT_NO_INIT && status != BT_STREAM) {
      ecrobot_term_bt_connection();
    }

    while (ecrobot_get_bt_status() != BT_STREAM) {
      if (link_status == 0) {
        display_clear(1);
      }

      ecrobot_init_bt_slave("fei");
      systick_wait_ms(1000);
      link_status = 0x55;
    }

    if (link_status == 0x55) {
      link_status = 0;
      display_clear(1);
      display_clear(1);
      display_goto_xy(0, 2);
      display_string("I am running ...");
      display_goto_xy(0, 5);
      display_string("-----------------");
      display_goto_xy(0, 6);
      display_string("ArmSim");
      display_goto_xy(0, 7);
      display_string("-----------------");
    }

    if (timesup == 0) {
      timesup = 1;

      /* External mode */
      {
        boolean_T rtmStopReq = false;
        rtExtModePauseIfNeeded(ArmSim_M->extModeInfo, 2, &rtmStopReq);
        if (rtmStopReq) {
          rtmSetStopRequested(ArmSim_M, true);
        }

        if (rtmGetStopRequested(ArmSim_M) == true) {
          rtmSetErrorStatus(ArmSim_M, "Simulation finished");
          break;
        }
      }

      /* External mode */
      {
        boolean_T rtmStopReq = false;
        rtExtModeOneStep(ArmSim_M->extModeInfo, 2, &rtmStopReq);
        if (rtmStopReq) {
          rtmSetStopRequested(ArmSim_M, true);
        }
      }

      or_ext = 0;
    }
  }

  /* External mode */
  rtExtModeShutdown(2);
  ArmSim_terminate();
  ecrobot_device_terminate();
  display_clear(1);
  systick_wait_ms(1000);
  nxt_lcd_power_down();
  systick_wait_ms(10);
  while (1) {
    nxt_avr_power_down();
  }

  TerminateTask();
}

void ecrobot_device_terminate(void)
{
  ArmSim_terminate();
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
