/*
 * File: ballTossController.c
 *
 * Code generated for Simulink model 'ballTossController'.
 *
 * Model version                  : 1.11
 * Simulink Coder version         : 8.6 (R2014a) 27-Dec-2013
 * TLC version                    : 8.6 (Jan 30 2014)
 * C/C++ source code generated on : Wed Oct 18 22:04:03 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ballTossController.h"
#include "ballTossController_private.h"
#include "ballTossController_dt.h"
#include "nxt_util.h"

/* Block signals (auto storage) */
B_ballTossController_T ballTossController_B;

/* Block states (auto storage) */
DW_ballTossController_T ballTossController_DW;

/* Real-time model */
RT_MODEL_ballTossController_T ballTossController_M_;
RT_MODEL_ballTossController_T *const ballTossController_M =
  &ballTossController_M_;

/* Forward declaration for local functions */
static real_T ballTossController_interp1(const real_T varargin_1[10], const
  real_T varargin_2[10], real_T varargin_3);

/*
 * Output and update for atomic system:
 *    '<Root>/INIT'
 *    '<Root>/INIT1'
 */
void ballTossController_INIT(const real_T rtu_traj_in[10], const real_T
  rtu_t_ref[10], real_T rtu_t_in, B_INIT_ballTossController_T *localB)
{
  real_T y[10];
  real_T x[10];
  real_T r;
  int32_T low_i;
  int32_T low_ip1;
  int32_T high_i;
  int32_T mid_i;
  int32_T i;

  /* MATLAB Function 'INIT': '<S1>:1' */
  if (rtu_t_in < 0.0) {
    /* '<S1>:1:2' */
    /* '<S1>:1:3' */
    localB->ref_cur = 0.0;
  } else if (rtu_t_in > rtu_t_ref[9]) {
    /* '<S1>:1:4' */
    /* '<S1>:1:5' */
    localB->ref_cur = rtu_traj_in[9];
  } else {
    /* '<S1>:1:7' */
    for (i = 0; i < 10; i++) {
      y[i] = rtu_traj_in[i];
      x[i] = rtu_t_ref[i];
    }

    localB->ref_cur = (rtNaN);
    i = 1;
    do {
      low_i = 0;
      if (i < 11) {
        if (rtIsNaN(rtu_t_ref[i - 1])) {
          low_i = 1;
        } else {
          i++;
        }
      } else {
        if (rtu_t_ref[1] < rtu_t_ref[0]) {
          for (low_i = 0; low_i < 5; low_i++) {
            r = x[low_i];
            x[low_i] = x[9 - low_i];
            x[9 - low_i] = r;
          }

          for (low_i = 0; low_i < 5; low_i++) {
            r = y[low_i];
            y[low_i] = y[9 - low_i];
            y[9 - low_i] = r;
          }
        }

        localB->ref_cur = (rtNaN);
        if (rtIsNaN(rtu_t_in)) {
          localB->ref_cur = (rtNaN);
        } else {
          if (!((rtu_t_in > x[9]) || (rtu_t_in < x[0]))) {
            low_i = 1;
            low_ip1 = 2;
            high_i = 10;
            while (high_i > low_ip1) {
              mid_i = (low_i + high_i) >> 1;
              if (rtu_t_in >= x[mid_i - 1]) {
                low_i = mid_i;
                low_ip1 = mid_i + 1;
              } else {
                high_i = mid_i;
              }
            }

            r = (rtu_t_in - x[low_i - 1]) / (x[low_i] - x[low_i - 1]);
            if (y[low_i - 1] == y[low_i]) {
              localB->ref_cur = y[low_i - 1];
            } else {
              localB->ref_cur = (1.0 - r) * y[low_i - 1] + r * y[low_i];
            }
          }
        }

        low_i = 1;
      }
    } while (low_i == 0);
  }
}

/* Function for MATLAB Function: '<Root>/THROW' */
static real_T ballTossController_interp1(const real_T varargin_1[10], const
  real_T varargin_2[10], real_T varargin_3)
{
  real_T Vq;
  real_T y[10];
  real_T x[10];
  real_T r;
  int32_T low_i;
  int32_T low_ip1;
  int32_T high_i;
  int32_T mid_i;
  int32_T i;
  for (i = 0; i < 10; i++) {
    y[i] = varargin_2[i];
    x[i] = varargin_1[i];
  }

  Vq = (rtNaN);
  i = 1;
  do {
    low_i = 0;
    if (i < 11) {
      if (rtIsNaN(varargin_1[i - 1])) {
        low_i = 1;
      } else {
        i++;
      }
    } else {
      if (varargin_1[1] < varargin_1[0]) {
        for (low_i = 0; low_i < 5; low_i++) {
          r = x[low_i];
          x[low_i] = x[9 - low_i];
          x[9 - low_i] = r;
        }

        for (low_i = 0; low_i < 5; low_i++) {
          r = y[low_i];
          y[low_i] = y[9 - low_i];
          y[9 - low_i] = r;
        }
      }

      if (!(rtIsNaN(varargin_3) || (varargin_3 > x[9]) || (varargin_3 < x[0])))
      {
        low_i = 1;
        low_ip1 = 2;
        high_i = 10;
        while (high_i > low_ip1) {
          mid_i = (low_i + high_i) >> 1;
          if (varargin_3 >= x[mid_i - 1]) {
            low_i = mid_i;
            low_ip1 = mid_i + 1;
          } else {
            high_i = mid_i;
          }
        }

        r = (varargin_3 - x[low_i - 1]) / (x[low_i] - x[low_i - 1]);
        if (y[low_i - 1] == y[low_i]) {
          Vq = y[low_i - 1];
        } else {
          Vq = (1.0 - r) * y[low_i - 1] + r * y[low_i];
        }
      }

      low_i = 1;
    }
  } while (low_i == 0);

  return Vq;
}

/*
 * Output and update for atomic system:
 *    '<Root>/THROW'
 *    '<Root>/THROW1'
 */
void ballTossController_THROW(const real_T rtu_traj_in[10], const real_T
  rtu_dtraj_in[10], const real_T rtu_t_ref[10], real_T rtu_t_in,
  B_THROW_ballTossController_T *localB)
{
  /* MATLAB Function 'THROW': '<S8>:1' */
  if (rtu_t_in < 0.0) {
    /* '<S8>:1:2' */
    /* '<S8>:1:3' */
    localB->ref_cur = 0.0;

    /* '<S8>:1:4' */
    localB->dref_cur = 0.0;
  } else if (rtu_t_in > rtu_t_ref[9]) {
    /* '<S8>:1:5' */
    /* '<S8>:1:6' */
    localB->ref_cur = rtu_traj_in[9];

    /* '<S8>:1:7' */
    localB->dref_cur = rtu_dtraj_in[9];
  } else {
    /* '<S8>:1:9' */
    localB->ref_cur = ballTossController_interp1(rtu_t_ref, rtu_traj_in,
      rtu_t_in);

    /* '<S8>:1:10' */
    localB->dref_cur = ballTossController_interp1(rtu_t_ref, rtu_dtraj_in,
      rtu_t_in);
  }
}

/* Model output function */
void ballTossController_output(void)
{
  /* local block i/o variables */
  real_T rtb_Clock;
  real_T rtb_clk;
  real_T rtb_Saturation;
  int32_T rtb_Encoder_0;
  int8_T tmp;
  int8_T tmp_0;
  real_T rtb_Gain;

  /* Clock: '<Root>/Clock' */
  rtb_Clock = ballTossController_M->Timing.t[0];

  /* ManualSwitch: '<Root>/THROW SWITCH' incorporates:
   *  Constant: '<Root>/Init on'
   *  Constant: '<Root>/Throw on'
   */
  if (ballTossController_P.THROWSWITCH_CurrentSetting == 1) {
    ballTossController_B.THROWSWITCH = ballTossController_P.Initon_Value;
  } else {
    ballTossController_B.THROWSWITCH = ballTossController_P.Throwon_Value;
  }

  /* End of ManualSwitch: '<Root>/THROW SWITCH' */

  /* MATLAB Function: '<Root>/MATLAB Function3' */
  /* MATLAB Function 'MATLAB Function3': '<S5>:1' */
  if (fabs(ballTossController_B.THROWSWITCH - ballTossController_DW.last_rst) !=
      0.0) {
    /* '<S5>:1:10' */
    /* '<S5>:1:11' */
    ballTossController_DW.t_off = rtb_Clock;
  }

  /* '<S5>:1:14' */
  rtb_clk = rtb_Clock - ballTossController_DW.t_off;

  /* '<S5>:1:15' */
  ballTossController_DW.last_rst = ballTossController_B.THROWSWITCH;

  /* End of MATLAB Function: '<Root>/MATLAB Function3' */

  /* MATLAB Function: '<Root>/THROW' incorporates:
   *  Constant: '<Root>/Constant2'
   *  Constant: '<Root>/Constant3'
   *  Constant: '<Root>/Constant4'
   */
  ballTossController_THROW(ballTossController_P.theta1_throw_traj,
    ballTossController_P.dtheta1_throw_traj, ballTossController_P.t_ref_throw,
    rtb_clk, &ballTossController_B.sf_THROW);

  /* MATLAB Function: '<Root>/INIT' incorporates:
   *  Constant: '<Root>/Constant'
   *  Constant: '<Root>/Constant1'
   */
  ballTossController_INIT(ballTossController_P.theta1_init_traj,
    ballTossController_P.t_ref_init, rtb_Clock, &ballTossController_B.sf_INIT);

  /* Switch: '<Root>/Switch' */
  if (ballTossController_B.THROWSWITCH > ballTossController_P.Switch_Threshold)
  {
    ballTossController_B.Switch = ballTossController_B.sf_THROW.ref_cur;
  } else {
    ballTossController_B.Switch = ballTossController_B.sf_INIT.ref_cur;
  }

  /* End of Switch: '<Root>/Switch' */

  /* S-Function (nxt_encoder): '<S6>/Encoder' */
  rtb_Encoder_0 = getEncoderValueNoReset(2U);

  /* DataTypeConversion: '<S6>/Data Type Conversion' incorporates:
   *  S-Function (nxt_encoder): '<S6>/Encoder'
   */
  rtb_Saturation = rtb_Encoder_0;

  /* Gain: '<S16>/Gain1' */
  ballTossController_B.Gain1 = ballTossController_P.Gain1_Gain * rtb_Saturation;

  /* Sum: '<S6>/Sum' */
  ballTossController_B.Sum = ballTossController_B.Switch -
    ballTossController_B.Gain1;

  /* Gain: '<S6>/Gain' */
  rtb_Gain = ballTossController_P.Kp1 * ballTossController_B.Sum;

  /* DiscreteStateSpace: '<S17>/Internal' */
  {
    rtb_Saturation = (ballTossController_P.Internal_C)*
      ballTossController_DW.Internal_DSTATE;
    rtb_Saturation += ballTossController_P.Internal_D*ballTossController_B.Sum;
  }

  /* Gain: '<S6>/Gain1' */
  ballTossController_B.Gain1_i = ballTossController_P.Kd1 * rtb_Saturation;

  /* Sum: '<S6>/Sum1' */
  ballTossController_B.Sum1 = rtb_Gain + ballTossController_B.Gain1_i;

  /* Saturate: '<S6>/Saturation' */
  if (ballTossController_B.Sum1 > ballTossController_P.Saturation_UpperSat) {
    rtb_Saturation = ballTossController_P.Saturation_UpperSat;
  } else if (ballTossController_B.Sum1 <
             ballTossController_P.Saturation_LowerSat) {
    rtb_Saturation = ballTossController_P.Saturation_LowerSat;
  } else {
    rtb_Saturation = ballTossController_B.Sum1;
  }

  /* End of Saturate: '<S6>/Saturation' */

  /* DataTypeConversion: '<S6>/Data Type Conversion1' */
  rtb_Gain = floor(rtb_Saturation);
  if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
    rtb_Gain = 0.0;
  } else {
    rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
  }

  ballTossController_B.DataTypeConversion1 = rtb_Gain < 0.0 ? -(int32_T)
    (uint32_T)-rtb_Gain : (int32_T)(uint32_T)rtb_Gain;

  /* End of DataTypeConversion: '<S6>/Data Type Conversion1' */

  /* DataTypeConversion: '<S19>/Data Type Conversion' */
  rtb_Encoder_0 = ballTossController_B.DataTypeConversion1;
  if (ballTossController_B.DataTypeConversion1 > 127) {
    rtb_Encoder_0 = 127;
  } else {
    if (ballTossController_B.DataTypeConversion1 < -128) {
      rtb_Encoder_0 = -128;
    }
  }

  /* S-Function (nxt_motor): '<S19>/Motor' incorporates:
   *  DataTypeConversion: '<S19>/Data Type Conversion'
   */
  tmp = (int8_T)rtb_Encoder_0;
  setMotor(&tmp, 2U, 2U);

  /* MATLAB Function: '<Root>/THROW1' incorporates:
   *  Constant: '<Root>/Constant4'
   *  Constant: '<Root>/Constant7'
   *  Constant: '<Root>/Constant8'
   */
  ballTossController_THROW(ballTossController_P.theta2_throw_traj,
    ballTossController_P.dtheta2_throw_traj, ballTossController_P.t_ref_throw,
    rtb_clk, &ballTossController_B.sf_THROW1);

  /* MATLAB Function: '<Root>/INIT1' incorporates:
   *  Constant: '<Root>/Constant1'
   *  Constant: '<Root>/Constant5'
   */
  ballTossController_INIT(ballTossController_P.theta2_init_traj,
    ballTossController_P.t_ref_init, rtb_Clock, &ballTossController_B.sf_INIT1);

  /* Switch: '<Root>/Switch2' */
  if (ballTossController_B.THROWSWITCH > ballTossController_P.Switch2_Threshold)
  {
    ballTossController_B.Switch2 = ballTossController_B.sf_THROW1.ref_cur;
  } else {
    ballTossController_B.Switch2 = ballTossController_B.sf_INIT1.ref_cur;
  }

  /* End of Switch: '<Root>/Switch2' */

  /* S-Function (nxt_encoder): '<S7>/Encoder' */
  rtb_Encoder_0 = getEncoderValueNoReset(3U);

  /* DataTypeConversion: '<S7>/Data Type Conversion' incorporates:
   *  S-Function (nxt_encoder): '<S7>/Encoder'
   */
  rtb_Saturation = rtb_Encoder_0;

  /* Gain: '<S24>/Gain1' */
  ballTossController_B.Gain1_c = ballTossController_P.Gain1_Gain_o *
    rtb_Saturation;

  /* Sum: '<S7>/Sum' */
  ballTossController_B.Sum_g = ballTossController_B.Switch2 -
    ballTossController_B.Gain1_c;

  /* Gain: '<S7>/Gain' */
  rtb_Gain = ballTossController_P.Kp2 * ballTossController_B.Sum_g;

  /* DiscreteStateSpace: '<S25>/Internal' */
  {
    rtb_Saturation = (ballTossController_P.Internal_C_m)*
      ballTossController_DW.Internal_DSTATE_j;
    rtb_Saturation += ballTossController_P.Internal_D_p*
      ballTossController_B.Sum_g;
  }

  /* Gain: '<S7>/Gain1' */
  ballTossController_B.Gain1_a = ballTossController_P.Kd2 * rtb_Saturation;

  /* Sum: '<S7>/Sum1' */
  ballTossController_B.Sum1_o = rtb_Gain + ballTossController_B.Gain1_a;

  /* Saturate: '<S7>/Saturation' */
  if (ballTossController_B.Sum1_o > ballTossController_P.Saturation_UpperSat_i)
  {
    rtb_Saturation = ballTossController_P.Saturation_UpperSat_i;
  } else if (ballTossController_B.Sum1_o <
             ballTossController_P.Saturation_LowerSat_f) {
    rtb_Saturation = ballTossController_P.Saturation_LowerSat_f;
  } else {
    rtb_Saturation = ballTossController_B.Sum1_o;
  }

  /* End of Saturate: '<S7>/Saturation' */

  /* DataTypeConversion: '<S7>/Data Type Conversion1' */
  rtb_Gain = floor(rtb_Saturation);
  if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
    rtb_Gain = 0.0;
  } else {
    rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
  }

  ballTossController_B.DataTypeConversion1_j = rtb_Gain < 0.0 ? -(int32_T)
    (uint32_T)-rtb_Gain : (int32_T)(uint32_T)rtb_Gain;

  /* End of DataTypeConversion: '<S7>/Data Type Conversion1' */

  /* DataTypeConversion: '<S27>/Data Type Conversion' */
  rtb_Encoder_0 = ballTossController_B.DataTypeConversion1_j;
  if (ballTossController_B.DataTypeConversion1_j > 127) {
    rtb_Encoder_0 = 127;
  } else {
    if (ballTossController_B.DataTypeConversion1_j < -128) {
      rtb_Encoder_0 = -128;
    }
  }

  /* S-Function (nxt_motor): '<S27>/Motor' incorporates:
   *  DataTypeConversion: '<S27>/Data Type Conversion'
   */
  tmp_0 = (int8_T)rtb_Encoder_0;
  setMotor(&tmp_0, 3U, 2U);

  /* DiscreteStateSpace: '<S3>/Internal' */
  {
    ballTossController_B.Internal = (ballTossController_P.Internal_C_b)*
      ballTossController_DW.Internal_DSTATE_p;
    ballTossController_B.Internal += ballTossController_P.Internal_D_n*
      ballTossController_B.sf_INIT.ref_cur;
  }

  /* Switch: '<Root>/Switch1' */
  if (ballTossController_B.THROWSWITCH > ballTossController_P.Switch1_Threshold)
  {
    ballTossController_B.Switch1 = ballTossController_B.sf_THROW.dref_cur;
  } else {
    ballTossController_B.Switch1 = ballTossController_B.Internal;
  }

  /* End of Switch: '<Root>/Switch1' */

  /* DiscreteStateSpace: '<S4>/Internal' */
  {
    ballTossController_B.Internal_i = (ballTossController_P.Internal_C_j)*
      ballTossController_DW.Internal_DSTATE_l;
    ballTossController_B.Internal_i += ballTossController_P.Internal_D_e*
      ballTossController_B.sf_INIT1.ref_cur;
  }

  /* Switch: '<Root>/Switch3' */
  if (ballTossController_B.THROWSWITCH > ballTossController_P.Switch3_Threshold)
  {
    ballTossController_B.Switch3 = ballTossController_B.sf_THROW1.dref_cur;
  } else {
    ballTossController_B.Switch3 = ballTossController_B.Internal_i;
  }

  /* End of Switch: '<Root>/Switch3' */
}

/* Model update function */
void ballTossController_update(void)
{
  /* Update for DiscreteStateSpace: '<S17>/Internal' */
  {
    real_T xnew[1];
    xnew[0] = ballTossController_P.Internal_A*
      ballTossController_DW.Internal_DSTATE;
    xnew[0] += ballTossController_P.Internal_B*ballTossController_B.Sum;
    (void) memcpy(&ballTossController_DW.Internal_DSTATE, xnew,
                  sizeof(real_T)*1);
  }

  /* Update for DiscreteStateSpace: '<S25>/Internal' */
  {
    real_T xnew[1];
    xnew[0] = ballTossController_P.Internal_A_g*
      ballTossController_DW.Internal_DSTATE_j;
    xnew[0] += ballTossController_P.Internal_B_p*ballTossController_B.Sum_g;
    (void) memcpy(&ballTossController_DW.Internal_DSTATE_j, xnew,
                  sizeof(real_T)*1);
  }

  /* Update for DiscreteStateSpace: '<S3>/Internal' */
  {
    real_T xnew[1];
    xnew[0] = ballTossController_P.Internal_A_gu*
      ballTossController_DW.Internal_DSTATE_p;
    xnew[0] += ballTossController_P.Internal_B_i*
      ballTossController_B.sf_INIT.ref_cur;
    (void) memcpy(&ballTossController_DW.Internal_DSTATE_p, xnew,
                  sizeof(real_T)*1);
  }

  /* Update for DiscreteStateSpace: '<S4>/Internal' */
  {
    real_T xnew[1];
    xnew[0] = ballTossController_P.Internal_A_f*
      ballTossController_DW.Internal_DSTATE_l;
    xnew[0] += ballTossController_P.Internal_B_p2*
      ballTossController_B.sf_INIT1.ref_cur;
    (void) memcpy(&ballTossController_DW.Internal_DSTATE_l, xnew,
                  sizeof(real_T)*1);
  }

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.0s, 0.0s] */
    if ((rtmGetTFinal(ballTossController_M)!=-1) &&
        !((rtmGetTFinal(ballTossController_M)-ballTossController_M->Timing.t[0])
          > ballTossController_M->Timing.t[0] * (DBL_EPSILON))) {
      rtmSetErrorStatus(ballTossController_M, "Simulation finished");
    }

    if (rtmGetStopRequested(ballTossController_M)) {
      rtmSetErrorStatus(ballTossController_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   */
  ballTossController_M->Timing.t[0] =
    (++ballTossController_M->Timing.clockTick0) *
    ballTossController_M->Timing.stepSize0;

  {
    /* Update absolute timer for sample time: [0.01s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The resolution of this integer timer is 0.01, which is the step size
     * of the task. Size of "clockTick1" ensures timer will not overflow during the
     * application lifespan selected.
     */
    ballTossController_M->Timing.clockTick1++;
  }
}

/* Model initialize function */
void ballTossController_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)ballTossController_M, 0,
                sizeof(RT_MODEL_ballTossController_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&ballTossController_M->solverInfo,
                          &ballTossController_M->Timing.simTimeStep);
    rtsiSetTPtr(&ballTossController_M->solverInfo, &rtmGetTPtr
                (ballTossController_M));
    rtsiSetStepSizePtr(&ballTossController_M->solverInfo,
                       &ballTossController_M->Timing.stepSize0);
    rtsiSetErrorStatusPtr(&ballTossController_M->solverInfo, (&rtmGetErrorStatus
                           (ballTossController_M)));
    rtsiSetRTModelPtr(&ballTossController_M->solverInfo, ballTossController_M);
  }

  rtsiSetSimTimeStep(&ballTossController_M->solverInfo, MAJOR_TIME_STEP);
  rtsiSetSolverName(&ballTossController_M->solverInfo,"FixedStepDiscrete");
  rtmSetTPtr(ballTossController_M, &ballTossController_M->Timing.tArray[0]);
  rtmSetTFinal(ballTossController_M, 10.0);
  ballTossController_M->Timing.stepSize0 = 0.01;

  /* External mode info */
  ballTossController_M->Sizes.checksums[0] = (1999202187U);
  ballTossController_M->Sizes.checksums[1] = (3061675984U);
  ballTossController_M->Sizes.checksums[2] = (670259190U);
  ballTossController_M->Sizes.checksums[3] = (509471430U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[6];
    ballTossController_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    systemRan[5] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(ballTossController_M->extModeInfo,
      &ballTossController_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(ballTossController_M->extModeInfo,
                        ballTossController_M->Sizes.checksums);
    rteiSetTPtr(ballTossController_M->extModeInfo, rtmGetTPtr
                (ballTossController_M));
  }

  /* block I/O */
  (void) memset(((void *) &ballTossController_B), 0,
                sizeof(B_ballTossController_T));

  /* states (dwork) */
  (void) memset((void *)&ballTossController_DW, 0,
                sizeof(DW_ballTossController_T));

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    ballTossController_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 14;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.B = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.P = &rtPTransTable;
  }

  /* InitializeConditions for MATLAB Function: '<Root>/MATLAB Function3' */
  ballTossController_DW.t_off = 0.0;
  ballTossController_DW.last_rst = 0.0;

  /* InitializeConditions for DiscreteStateSpace: '<S17>/Internal' */
  ballTossController_DW.Internal_DSTATE = ballTossController_P.Internal_X0;

  /* InitializeConditions for DiscreteStateSpace: '<S25>/Internal' */
  ballTossController_DW.Internal_DSTATE_j = ballTossController_P.Internal_X0_k;

  /* InitializeConditions for DiscreteStateSpace: '<S3>/Internal' */
  ballTossController_DW.Internal_DSTATE_p = ballTossController_P.Internal_X0_l;

  /* InitializeConditions for DiscreteStateSpace: '<S4>/Internal' */
  ballTossController_DW.Internal_DSTATE_l = ballTossController_P.Internal_X0_m;
}

/* Model terminate function */
void ballTossController_terminate(void)
{
  /* Terminate for S-Function (nxt_motor): '<S19>/Motor' */
  terminateMotor(2U, 2U);

  /* Terminate for S-Function (nxt_motor): '<S27>/Motor' */
  terminateMotor(3U, 2U);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
