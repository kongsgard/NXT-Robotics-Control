/*
 * File: Lab2a_template.c
 *
 * Code generated for Simulink model 'Lab2a_template'.
 *
 * Model version                  : 1.36
 * Simulink Coder version         : 8.6 (R2014a) 27-Dec-2013
 * TLC version                    : 8.6 (Jan 30 2014)
 * C/C++ source code generated on : Wed Oct 25 20:42:06 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "Lab2a_template.h"
#include "Lab2a_template_private.h"
#include "Lab2a_template_dt.h"
#include "nxt_util.h"

/* Block signals (auto storage) */
B_Lab2a_template_T Lab2a_template_B;

/* Block states (auto storage) */
DW_Lab2a_template_T Lab2a_template_DW;

/* Real-time model */
RT_MODEL_Lab2a_template_T Lab2a_template_M_;
RT_MODEL_Lab2a_template_T *const Lab2a_template_M = &Lab2a_template_M_;

/*
 * Output and update for atomic system:
 *    '<Root>/traj generation'
 *    '<Root>/traj generation1'
 *    '<Root>/traj generation2'
 */
void Lab2a_template_trajgeneration(const real_T rtu_traj_in[100], const real_T
  rtu_dtraj_in[100], real_T rtu_t_in, real_T rtu_Ts_traj,
  B_trajgeneration_Lab2a_templa_T *localB)
{
  real_T index_fraction;
  real_T b_index;

  /* MATLAB Function 'traj generation': '<S8>:1' */
  /* '<S8>:1:2' */
  /* amt of seconds to wait before starting traj */
  /* '<S8>:1:4' */
  /* Time scaling factor (# of trajectory points per second multiplier) */
  /* Tweaking this will speed-up or slow-down the playback of traj, allowing */
  /* for some control over resolution. */
  /* '<S8>:1:8' */
  /* '<S8>:1:9' */
  /* '<S8>:1:10' */
  /* Compute the current index in the trajectory array */
  /* '<S8>:1:12' */
  if (rtu_t_in - 1.0 >= 0.0) {
    index_fraction = rtu_t_in - 1.0;
  } else {
    index_fraction = 0.0;
  }

  index_fraction = 100.0 / (rtu_Ts_traj * 100.0) * index_fraction + 1.0;

  /* '<S8>:1:13' */
  b_index = floor(index_fraction);

  /* '<S8>:1:14' */
  index_fraction -= b_index;

  /*  additional amount "beyond" index */
  /* Extract the current position from the trajectory (plus interp) */
  if (b_index < 100.0) {
    /* '<S8>:1:16' */
    /* '<S8>:1:18' */
    localB->ref_cur = rtu_traj_in[(int32_T)(b_index + 1.0) - 1] * index_fraction
      + (1.0 - index_fraction) * rtu_traj_in[(int32_T)b_index - 1];

    /* '<S8>:1:21' */
    localB->ref_dcur = rtu_dtraj_in[(int32_T)(b_index + 1.0) - 1] *
      index_fraction + (1.0 - index_fraction) * rtu_dtraj_in[(int32_T)b_index -
      1];
  } else {
    /* If we run out of data, continue outputting the last value */
    /* '<S8>:1:25' */
    localB->ref_cur = rtu_traj_in[99];

    /* '<S8>:1:26' */
    localB->ref_dcur = rtu_dtraj_in[99];
  }

  /* '<S8>:1:28' */
  /* '<S8>:1:29' */
}

/* Model output function */
void Lab2a_template_output(void)
{
  /* local block i/o variables */
  real_T rtb_Clock;
  real_T rtb_clk;
  real_T rtb_Sum1;
  int32_T rtb_Encoder2_0;
  int8_T tmp;
  int8_T tmp_0;
  int8_T tmp_1;
  real_T rtb_Sum3;

  /* Clock: '<Root>/Clock' */
  rtb_Clock = Lab2a_template_M->Timing.t[0];

  /* ManualSwitch: '<Root>/time reset switch' incorporates:
   *  Constant: '<Root>/Off//Reset'
   *  Constant: '<Root>/On'
   */
  if (Lab2a_template_P.timeresetswitch_CurrentSetting == 1) {
    Lab2a_template_B.timeresetswitch = Lab2a_template_P.OffReset_Value;
  } else {
    Lab2a_template_B.timeresetswitch = Lab2a_template_P.On_Value;
  }

  /* End of ManualSwitch: '<Root>/time reset switch' */

  /* MATLAB Function: '<Root>/timer w// reset' */
  /* MATLAB Function 'timer w// reset': '<S7>:1' */
  /* if rest switch was pressed, use current time as t_offset */
  if (fabs(Lab2a_template_B.timeresetswitch - Lab2a_template_DW.last_rst) != 0.0)
  {
    /* '<S7>:1:11' */
    /* '<S7>:1:12' */
    Lab2a_template_DW.t_off = rtb_Clock;
  }

  if (Lab2a_template_B.timeresetswitch == 0.0) {
    /* '<S7>:1:15' */
    /* '<S7>:1:16' */
    rtb_clk = 0.0;

    /* force time to wait if reset is on */
  } else {
    /* '<S7>:1:18' */
    rtb_clk = rtb_Clock - Lab2a_template_DW.t_off;

    /* output clock */
  }

  /* '<S7>:1:20' */
  Lab2a_template_DW.last_rst = Lab2a_template_B.timeresetswitch;

  /* End of MATLAB Function: '<Root>/timer w// reset' */

  /* MATLAB Function: '<Root>/traj generation' incorporates:
   *  Constant: '<Root>/Constant'
   *  Constant: '<Root>/Constant1'
   *  Constant: '<Root>/Constant2'
   */
  /* update reset var */
  Lab2a_template_trajgeneration(Lab2a_template_P.traj_A,
    Lab2a_template_P.traj_dA, rtb_clk, Lab2a_template_P.Ts_traj,
    &Lab2a_template_B.sf_trajgeneration);

  /* MATLAB Function: '<Root>/traj generation1' incorporates:
   *  Constant: '<Root>/Constant'
   *  Constant: '<Root>/Constant4'
   *  Constant: '<Root>/Constant5'
   */
  Lab2a_template_trajgeneration(Lab2a_template_P.traj_B,
    Lab2a_template_P.traj_dB, rtb_clk, Lab2a_template_P.Ts_traj,
    &Lab2a_template_B.sf_trajgeneration1);

  /* MATLAB Function: '<Root>/traj generation2' incorporates:
   *  Constant: '<Root>/Constant'
   *  Constant: '<Root>/Constant7'
   *  Constant: '<Root>/Constant8'
   */
  Lab2a_template_trajgeneration(Lab2a_template_P.traj_C,
    Lab2a_template_P.traj_dC, rtb_clk, Lab2a_template_P.Ts_traj,
    &Lab2a_template_B.sf_trajgeneration2);

  /* S-Function (nxt_encoder): '<S1>/Encoder' */
  rtb_Encoder2_0 = getEncoderValueNoReset(1U);

  /* DataTypeConversion: '<S1>/Data Type Conversion1' incorporates:
   *  S-Function (nxt_encoder): '<S1>/Encoder'
   */
  rtb_Sum1 = rtb_Encoder2_0;

  /* Gain: '<S1>/Gain' */
  Lab2a_template_B.Gain = Lab2a_template_P.Gain_Gain * rtb_Sum1;

  /* Sum: '<S4>/Sum3' */
  rtb_Sum3 = Lab2a_template_B.sf_trajgeneration.ref_cur - Lab2a_template_B.Gain;

  /* DiscreteStateSpace: '<S11>/Internal' */
  {
    rtb_Sum1 = Lab2a_template_P.Internal_D*Lab2a_template_B.Gain;
    rtb_Sum1 += Lab2a_template_P.Internal_C*Lab2a_template_DW.Internal_DSTATE;
  }

  /* Sum: '<S4>/Sum1' incorporates:
   *  Gain: '<S4>/Gain'
   *  Gain: '<S4>/Gain1'
   *  Sum: '<S4>/Sum2'
   */
  rtb_Sum1 = (Lab2a_template_B.sf_trajgeneration.ref_dcur - rtb_Sum1) *
    Lab2a_template_P.Kd + Lab2a_template_P.Kp * rtb_Sum3;

  /* Saturate: '<S1>/Saturation' */
  if (rtb_Sum1 > Lab2a_template_P.Saturation_UpperSat) {
    Lab2a_template_B.Saturation = Lab2a_template_P.Saturation_UpperSat;
  } else if (rtb_Sum1 < Lab2a_template_P.Saturation_LowerSat) {
    Lab2a_template_B.Saturation = Lab2a_template_P.Saturation_LowerSat;
  } else {
    Lab2a_template_B.Saturation = rtb_Sum1;
  }

  /* End of Saturate: '<S1>/Saturation' */

  /* DataTypeConversion: '<S1>/Data Type Conversion' */
  rtb_Sum3 = floor(Lab2a_template_B.Saturation);
  if (rtIsNaN(rtb_Sum3) || rtIsInf(rtb_Sum3)) {
    rtb_Sum3 = 0.0;
  } else {
    rtb_Sum3 = fmod(rtb_Sum3, 256.0);
  }

  /* S-Function (nxt_motor): '<S14>/Motor' incorporates:
   *  DataTypeConversion: '<S1>/Data Type Conversion'
   */
  tmp = (int8_T)(rtb_Sum3 < 0.0 ? (int32_T)(int8_T)-(int8_T)(uint8_T)-rtb_Sum3 :
                 (int32_T)(int8_T)(uint8_T)rtb_Sum3);
  setMotor(&tmp, 1U, 2U);

  /* S-Function (nxt_encoder): '<S2>/Encoder1' */
  rtb_Encoder2_0 = getEncoderValueNoReset(2U);

  /* DataTypeConversion: '<S2>/Data Type Conversion3' incorporates:
   *  S-Function (nxt_encoder): '<S2>/Encoder1'
   */
  rtb_Sum1 = rtb_Encoder2_0;

  /* Gain: '<S2>/Gain1' */
  Lab2a_template_B.Gain1 = Lab2a_template_P.Gain1_Gain * rtb_Sum1;

  /* Sum: '<S5>/Sum3' */
  rtb_Sum3 = Lab2a_template_B.sf_trajgeneration1.ref_cur -
    Lab2a_template_B.Gain1;

  /* DiscreteStateSpace: '<S12>/Internal' */
  {
    rtb_Sum1 = Lab2a_template_P.Internal_D_g*Lab2a_template_B.Gain1;
    rtb_Sum1 += Lab2a_template_P.Internal_C_a*
      Lab2a_template_DW.Internal_DSTATE_k;
  }

  /* Sum: '<S5>/Sum1' incorporates:
   *  Gain: '<S5>/Gain'
   *  Gain: '<S5>/Gain1'
   *  Sum: '<S5>/Sum2'
   */
  rtb_Sum1 = (Lab2a_template_B.sf_trajgeneration1.ref_dcur - rtb_Sum1) *
    Lab2a_template_P.Kd + Lab2a_template_P.Kp * rtb_Sum3;

  /* Saturate: '<S2>/Saturation1' */
  if (rtb_Sum1 > Lab2a_template_P.Saturation1_UpperSat) {
    Lab2a_template_B.Saturation1 = Lab2a_template_P.Saturation1_UpperSat;
  } else if (rtb_Sum1 < Lab2a_template_P.Saturation1_LowerSat) {
    Lab2a_template_B.Saturation1 = Lab2a_template_P.Saturation1_LowerSat;
  } else {
    Lab2a_template_B.Saturation1 = rtb_Sum1;
  }

  /* End of Saturate: '<S2>/Saturation1' */

  /* DataTypeConversion: '<S2>/Data Type Conversion2' */
  rtb_Sum3 = floor(Lab2a_template_B.Saturation1);
  if (rtIsNaN(rtb_Sum3) || rtIsInf(rtb_Sum3)) {
    rtb_Sum3 = 0.0;
  } else {
    rtb_Sum3 = fmod(rtb_Sum3, 256.0);
  }

  /* S-Function (nxt_motor): '<S15>/Motor' incorporates:
   *  DataTypeConversion: '<S2>/Data Type Conversion2'
   */
  tmp_0 = (int8_T)(rtb_Sum3 < 0.0 ? (int32_T)(int8_T)-(int8_T)(uint8_T)-rtb_Sum3
                   : (int32_T)(int8_T)(uint8_T)rtb_Sum3);
  setMotor(&tmp_0, 2U, 2U);

  /* S-Function (nxt_encoder): '<S3>/Encoder2' */
  rtb_Encoder2_0 = getEncoderValueNoReset(3U);

  /* DataTypeConversion: '<S3>/Data Type Conversion5' incorporates:
   *  S-Function (nxt_encoder): '<S3>/Encoder2'
   */
  rtb_Sum1 = rtb_Encoder2_0;

  /* Gain: '<S3>/Gain2' */
  Lab2a_template_B.Gain2 = Lab2a_template_P.Gain2_Gain * rtb_Sum1;

  /* Sum: '<S6>/Sum3' */
  rtb_Sum3 = Lab2a_template_B.sf_trajgeneration2.ref_cur -
    Lab2a_template_B.Gain2;

  /* DiscreteStateSpace: '<S13>/Internal' */
  {
    rtb_Sum1 = Lab2a_template_P.Internal_D_f*Lab2a_template_B.Gain2;
    rtb_Sum1 += Lab2a_template_P.Internal_C_i*
      Lab2a_template_DW.Internal_DSTATE_j;
  }

  /* Sum: '<S6>/Sum1' incorporates:
   *  Gain: '<S6>/Gain'
   *  Gain: '<S6>/Gain1'
   *  Sum: '<S6>/Sum2'
   */
  rtb_Sum1 = (Lab2a_template_B.sf_trajgeneration2.ref_dcur - rtb_Sum1) *
    Lab2a_template_P.Kd + Lab2a_template_P.Kp * rtb_Sum3;

  /* Saturate: '<S3>/Saturation2' */
  if (rtb_Sum1 > Lab2a_template_P.Saturation2_UpperSat) {
    Lab2a_template_B.Saturation2 = Lab2a_template_P.Saturation2_UpperSat;
  } else if (rtb_Sum1 < Lab2a_template_P.Saturation2_LowerSat) {
    Lab2a_template_B.Saturation2 = Lab2a_template_P.Saturation2_LowerSat;
  } else {
    Lab2a_template_B.Saturation2 = rtb_Sum1;
  }

  /* End of Saturate: '<S3>/Saturation2' */

  /* DataTypeConversion: '<S3>/Data Type Conversion4' */
  rtb_Sum3 = floor(Lab2a_template_B.Saturation2);
  if (rtIsNaN(rtb_Sum3) || rtIsInf(rtb_Sum3)) {
    rtb_Sum3 = 0.0;
  } else {
    rtb_Sum3 = fmod(rtb_Sum3, 256.0);
  }

  /* S-Function (nxt_motor): '<S16>/Motor' incorporates:
   *  DataTypeConversion: '<S3>/Data Type Conversion4'
   */
  tmp_1 = (int8_T)(rtb_Sum3 < 0.0 ? (int32_T)(int8_T)-(int8_T)(uint8_T)-rtb_Sum3
                   : (int32_T)(int8_T)(uint8_T)rtb_Sum3);
  setMotor(&tmp_1, 3U, 2U);
}

/* Model update function */
void Lab2a_template_update(void)
{
  /* Update for DiscreteStateSpace: '<S11>/Internal' */
  {
    Lab2a_template_DW.Internal_DSTATE = Lab2a_template_B.Gain +
      Lab2a_template_P.Internal_A*Lab2a_template_DW.Internal_DSTATE;
  }

  /* Update for DiscreteStateSpace: '<S12>/Internal' */
  {
    Lab2a_template_DW.Internal_DSTATE_k = Lab2a_template_B.Gain1 +
      Lab2a_template_P.Internal_A_j*Lab2a_template_DW.Internal_DSTATE_k;
  }

  /* Update for DiscreteStateSpace: '<S13>/Internal' */
  {
    Lab2a_template_DW.Internal_DSTATE_j = Lab2a_template_B.Gain2 +
      Lab2a_template_P.Internal_A_l*Lab2a_template_DW.Internal_DSTATE_j;
  }

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.0s, 0.0s] */
    if ((rtmGetTFinal(Lab2a_template_M)!=-1) &&
        !((rtmGetTFinal(Lab2a_template_M)-Lab2a_template_M->Timing.t[0]) >
          Lab2a_template_M->Timing.t[0] * (DBL_EPSILON))) {
      rtmSetErrorStatus(Lab2a_template_M, "Simulation finished");
    }

    if (rtmGetStopRequested(Lab2a_template_M)) {
      rtmSetErrorStatus(Lab2a_template_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   */
  Lab2a_template_M->Timing.t[0] =
    (++Lab2a_template_M->Timing.clockTick0) * Lab2a_template_M->Timing.stepSize0;

  {
    /* Update absolute timer for sample time: [0.005s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The resolution of this integer timer is 0.005, which is the step size
     * of the task. Size of "clockTick1" ensures timer will not overflow during the
     * application lifespan selected.
     */
    Lab2a_template_M->Timing.clockTick1++;
  }
}

/* Model initialize function */
void Lab2a_template_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)Lab2a_template_M, 0,
                sizeof(RT_MODEL_Lab2a_template_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&Lab2a_template_M->solverInfo,
                          &Lab2a_template_M->Timing.simTimeStep);
    rtsiSetTPtr(&Lab2a_template_M->solverInfo, &rtmGetTPtr(Lab2a_template_M));
    rtsiSetStepSizePtr(&Lab2a_template_M->solverInfo,
                       &Lab2a_template_M->Timing.stepSize0);
    rtsiSetErrorStatusPtr(&Lab2a_template_M->solverInfo, (&rtmGetErrorStatus
      (Lab2a_template_M)));
    rtsiSetRTModelPtr(&Lab2a_template_M->solverInfo, Lab2a_template_M);
  }

  rtsiSetSimTimeStep(&Lab2a_template_M->solverInfo, MAJOR_TIME_STEP);
  rtsiSetSolverName(&Lab2a_template_M->solverInfo,"FixedStepDiscrete");
  rtmSetTPtr(Lab2a_template_M, &Lab2a_template_M->Timing.tArray[0]);
  rtmSetTFinal(Lab2a_template_M, -1);
  Lab2a_template_M->Timing.stepSize0 = 0.005;

  /* External mode info */
  Lab2a_template_M->Sizes.checksums[0] = (4066698827U);
  Lab2a_template_M->Sizes.checksums[1] = (3654309783U);
  Lab2a_template_M->Sizes.checksums[2] = (3003676189U);
  Lab2a_template_M->Sizes.checksums[3] = (929376589U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[5];
    Lab2a_template_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(Lab2a_template_M->extModeInfo,
      &Lab2a_template_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(Lab2a_template_M->extModeInfo,
                        Lab2a_template_M->Sizes.checksums);
    rteiSetTPtr(Lab2a_template_M->extModeInfo, rtmGetTPtr(Lab2a_template_M));
  }

  /* block I/O */
  (void) memset(((void *) &Lab2a_template_B), 0,
                sizeof(B_Lab2a_template_T));

  /* states (dwork) */
  (void) memset((void *)&Lab2a_template_DW, 0,
                sizeof(DW_Lab2a_template_T));

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    Lab2a_template_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 14;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.B = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.P = &rtPTransTable;
  }

  /* InitializeConditions for MATLAB Function: '<Root>/timer w// reset' */
  Lab2a_template_DW.t_off = 0.0;
  Lab2a_template_DW.last_rst = 0.0;

  /* InitializeConditions for DiscreteStateSpace: '<S11>/Internal' */
  Lab2a_template_DW.Internal_DSTATE = Lab2a_template_P.Internal_X0;

  /* InitializeConditions for DiscreteStateSpace: '<S12>/Internal' */
  Lab2a_template_DW.Internal_DSTATE_k = Lab2a_template_P.Internal_X0_l;

  /* InitializeConditions for DiscreteStateSpace: '<S13>/Internal' */
  Lab2a_template_DW.Internal_DSTATE_j = Lab2a_template_P.Internal_X0_e;
}

/* Model terminate function */
void Lab2a_template_terminate(void)
{
  /* Terminate for S-Function (nxt_motor): '<S14>/Motor' */
  terminateMotor(1U, 2U);

  /* Terminate for S-Function (nxt_motor): '<S15>/Motor' */
  terminateMotor(2U, 2U);

  /* Terminate for S-Function (nxt_motor): '<S16>/Motor' */
  terminateMotor(3U, 2U);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
