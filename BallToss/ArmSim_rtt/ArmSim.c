/*
 * File: ArmSim.c
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
#include "ArmSim_private.h"
#include "ArmSim_dt.h"
#include "nxt_util.h"

/* Block signals (auto storage) */
B_ArmSim_T ArmSim_B;

/* Block states (auto storage) */
DW_ArmSim_T ArmSim_DW;

/* Real-time model */
RT_MODEL_ArmSim_T ArmSim_M_;
RT_MODEL_ArmSim_T *const ArmSim_M = &ArmSim_M_;

/*
 * Initial conditions for atomic system:
 *    '<Root>/Init Motor A'
 *    '<Root>/Init Motor B'
 */
void ArmSim_InitMotorA_Init(DW_InitMotorA_ArmSim_T *localDW)
{
  localDW->max_angle = 0.0;
}

/*
 * Output and update for atomic system:
 *    '<Root>/Init Motor A'
 *    '<Root>/Init Motor B'
 */
void ArmSim_InitMotorA(real_T rtu_t_in, real_T rtu_is_run, real_T rtu_curr_angle,
  B_InitMotorA_ArmSim_T *localB, DW_InitMotorA_ArmSim_T *localDW)
{
  real_T y;

  /* MATLAB Function 'Init Motor A': '<S1>:1' */
  if (rtu_is_run > 0.0) {
    /* '<S1>:1:8' */
    /* '<S1>:1:9' */
    localDW->max_angle = rtu_curr_angle;

    /* '<S1>:1:10' */
    localB->angle = 0.0;

    /* '<S1>:1:11' */
    localB->velocity = 0.0;
  } else {
    /* '<S1>:1:13' */
    y = rtu_t_in / 2.0;
    if (1.0 - y > 0.0) {
      /* '<S1>:1:14' */
      /* '<S1>:1:15' */
      localB->angle = (1.0 - y) * localDW->max_angle;

      /* '<S1>:1:16' */
      localB->velocity = 0.0;
    } else {
      /* '<S1>:1:18' */
      localB->angle = 0.0;

      /* '<S1>:1:19' */
      localB->velocity = 0.0;
    }
  }
}

/*
 * Initial conditions for atomic system:
 *    '<Root>/Motor A Throw'
 *    '<Root>/Motor B Throw'
 */
void ArmSim_MotorAThrow_Init(DW_MotorAThrow_ArmSim_T *localDW)
{
  localDW->count = 0.0;
  localDW->t_curr = 0.0;
}

/*
 * Output and update for atomic system:
 *    '<Root>/Motor A Throw'
 *    '<Root>/Motor B Throw'
 */
void ArmSim_MotorAThrow(real_T rtu_t_in, real_T rtu_is_run, const real_T
  rtu_theta[10], const real_T rtu_dtheta[10], B_MotorAThrow_ArmSim_T *localB,
  DW_MotorAThrow_ArmSim_T *localDW)
{
  /* MATLAB Function 'Motor A Throw': '<S3>:1' */
  if (rtu_is_run == 0.0) {
    /* '<S3>:1:10' */
    /* '<S3>:1:11' */
    localDW->count = 0.0;

    /* '<S3>:1:12' */
    localDW->t_curr = 0.0;

    /* '<S3>:1:13' */
    localB->angle = 0.0;

    /* '<S3>:1:14' */
    localB->velocity = 0.0;
  } else {
    if ((rtu_t_in > localDW->t_curr) && (localDW->count < 10.0)) {
      /* '<S3>:1:16' */
      /* '<S3>:1:17' */
      localDW->count++;
    }

    /* '<S3>:1:19' */
    localB->velocity = rtu_dtheta[(int32_T)localDW->count - 1];

    /* '<S3>:1:20' */
    localB->angle = rtu_theta[(int32_T)localDW->count - 1];

    /* '<S3>:1:21' */
    localDW->t_curr = rtu_t_in;
  }
}

/* Model output function */
void ArmSim_output(void)
{
  /* local block i/o variables */
  real_T rtb_Clock;
  real_T rtb_clk;
  int32_T rtb_Encoder1_0;
  int8_T tmp;
  int8_T tmp_0;
  real_T rtb_Sum_c;
  real_T u0;

  /* S-Function (nxt_encoder): '<S6>/Encoder1' */
  rtb_Encoder1_0 = getEncoderValueNoReset(2U);

  /* Gain: '<S6>/Gain1' incorporates:
   *  DataTypeConversion: '<S6>/Data Type Conversion2'
   *  S-Function (nxt_encoder): '<S6>/Encoder1'
   */
  ArmSim_B.Gain1 = ArmSim_P.Gain1_Gain * (real_T)rtb_Encoder1_0;

  /* S-Function (nxt_encoder): '<S5>/Encoder1' */
  rtb_Encoder1_0 = getEncoderValueNoReset(1U);

  /* Gain: '<S5>/Gain1' incorporates:
   *  DataTypeConversion: '<S5>/Data Type Conversion2'
   *  S-Function (nxt_encoder): '<S5>/Encoder1'
   */
  ArmSim_B.Gain1_c = ArmSim_P.Gain1_Gain_m * (real_T)rtb_Encoder1_0;

  /* Clock: '<Root>/Clock' */
  rtb_Clock = ArmSim_M->Timing.t[0];

  /* ManualSwitch: '<Root>/Manual Switch' incorporates:
   *  Constant: '<Root>/S0'
   *  Constant: '<Root>/S1'
   */
  if (ArmSim_P.ManualSwitch_CurrentSetting == 1) {
    ArmSim_B.ManualSwitch = ArmSim_P.S0_Value;
  } else {
    ArmSim_B.ManualSwitch = ArmSim_P.S1_Value;
  }

  /* End of ManualSwitch: '<Root>/Manual Switch' */

  /* MATLAB Function: '<Root>/Reset Clock' */
  /* MATLAB Function 'Reset Clock': '<S7>:1' */
  if (fabs(ArmSim_B.ManualSwitch - ArmSim_DW.last_rst) != 0.0) {
    /* '<S7>:1:10' */
    /* '<S7>:1:11' */
    ArmSim_DW.t_off = rtb_Clock;
  }

  /* '<S7>:1:14' */
  rtb_clk = rtb_Clock - ArmSim_DW.t_off;

  /* '<S7>:1:15' */
  ArmSim_DW.last_rst = ArmSim_B.ManualSwitch;

  /* End of MATLAB Function: '<Root>/Reset Clock' */

  /* MATLAB Function: '<Root>/Motor A Throw' incorporates:
   *  Constant: '<Root>/dtheta 1'
   *  Constant: '<Root>/theta 1'
   */
  ArmSim_MotorAThrow(rtb_clk, ArmSim_B.ManualSwitch, ArmSim_P.theta1_throw_traj,
                     ArmSim_P.dtheta1_throw_traj, &ArmSim_B.sf_MotorAThrow,
                     &ArmSim_DW.sf_MotorAThrow);

  /* MATLAB Function: '<Root>/Init Motor A' */
  ArmSim_InitMotorA(rtb_clk, ArmSim_B.ManualSwitch, ArmSim_B.Gain1_c,
                    &ArmSim_B.sf_InitMotorA, &ArmSim_DW.sf_InitMotorA);

  /* Switch: '<Root>/Switch' */
  if (ArmSim_B.ManualSwitch > ArmSim_P.Switch_Threshold) {
    ArmSim_B.Switch = ArmSim_B.sf_MotorAThrow.angle;
  } else {
    ArmSim_B.Switch = ArmSim_B.sf_InitMotorA.angle;
  }

  /* End of Switch: '<Root>/Switch' */

  /* MATLAB Function: '<Root>/Motor B Throw' incorporates:
   *  Constant: '<Root>/dtheta 2'
   *  Constant: '<Root>/theta 2'
   */
  ArmSim_MotorAThrow(rtb_clk, ArmSim_B.ManualSwitch, ArmSim_P.theta2_throw_traj,
                     ArmSim_P.dtheta2_throw_traj, &ArmSim_B.sf_MotorBThrow,
                     &ArmSim_DW.sf_MotorBThrow);

  /* MATLAB Function: '<Root>/Init Motor B' */
  ArmSim_InitMotorA(rtb_clk, ArmSim_B.ManualSwitch, ArmSim_B.Gain1,
                    &ArmSim_B.sf_InitMotorB, &ArmSim_DW.sf_InitMotorB);

  /* Switch: '<Root>/Switch1' */
  if (ArmSim_B.ManualSwitch > ArmSim_P.Switch1_Threshold) {
    ArmSim_B.Switch1 = ArmSim_B.sf_MotorBThrow.angle;
  } else {
    ArmSim_B.Switch1 = ArmSim_B.sf_InitMotorB.angle;
  }

  /* End of Switch: '<Root>/Switch1' */

  /* Switch: '<Root>/Switch2' */
  if (ArmSim_B.ManualSwitch > ArmSim_P.Switch2_Threshold) {
    ArmSim_B.Switch2 = ArmSim_B.sf_MotorAThrow.velocity;
  } else {
    ArmSim_B.Switch2 = ArmSim_B.sf_InitMotorA.velocity;
  }

  /* End of Switch: '<Root>/Switch2' */

  /* Switch: '<Root>/Switch3' */
  if (ArmSim_B.ManualSwitch > ArmSim_P.Switch3_Threshold) {
    ArmSim_B.Switch3 = ArmSim_B.sf_MotorBThrow.velocity;
  } else {
    ArmSim_B.Switch3 = ArmSim_B.sf_InitMotorB.velocity;
  }

  /* End of Switch: '<Root>/Switch3' */

  /* DiscreteTransferFcn: '<S5>/Integral' */
  ArmSim_B.Integral = ArmSim_P.Integral_NumCoef * ArmSim_DW.Integral_states;

  /* Sum: '<S5>/Sum' */
  rtb_Sum_c = ArmSim_B.Switch - ArmSim_B.Gain1_c;

  /* DiscreteStateSpace: '<S8>/Internal' */
  {
    ArmSim_B.Internal = (ArmSim_P.Internal_C)*ArmSim_DW.Internal_DSTATE;
    ArmSim_B.Internal += ArmSim_P.Internal_D*ArmSim_B.Gain1_c;
  }

  /* Gain: '<S5>/Kd' incorporates:
   *  Sum: '<S5>/Sum2'
   */
  ArmSim_B.Kd = (0.0 - ArmSim_B.Internal) * ArmSim_P.Kd1;

  /* Sum: '<S5>/Sum1' incorporates:
   *  Gain: '<S5>/Kp'
   */
  u0 = (ArmSim_P.Kd1 * rtb_Sum_c + ArmSim_B.Integral) + ArmSim_B.Kd;

  /* Saturate: '<S5>/Saturation1' */
  if (u0 > ArmSim_P.Saturation1_UpperSat) {
    u0 = ArmSim_P.Saturation1_UpperSat;
  } else {
    if (u0 < ArmSim_P.Saturation1_LowerSat) {
      u0 = ArmSim_P.Saturation1_LowerSat;
    }
  }

  /* DataTypeConversion: '<S5>/Data Type Conversion3' incorporates:
   *  Saturate: '<S5>/Saturation1'
   */
  u0 = floor(u0);
  if (rtIsNaN(u0) || rtIsInf(u0)) {
    u0 = 0.0;
  } else {
    u0 = fmod(u0, 256.0);
  }

  ArmSim_B.DataTypeConversion3 = (int8_T)(u0 < 0.0 ? (int32_T)(int8_T)-(int8_T)
    (uint8_T)-u0 : (int32_T)(int8_T)(uint8_T)u0);

  /* End of DataTypeConversion: '<S5>/Data Type Conversion3' */

  /* S-Function (nxt_motor): '<S9>/Motor' */
  tmp = ArmSim_B.DataTypeConversion3;
  setMotor(&tmp, 1U, 2U);

  /* Gain: '<S5>/Ki' */
  ArmSim_B.Ki = ArmSim_P.Ki_Gain * rtb_Sum_c;

  /* Gain: '<S6>/Kp' incorporates:
   *  Sum: '<S6>/Sum'
   */
  rtb_Sum_c = (ArmSim_B.Switch1 - ArmSim_B.Gain1) * ArmSim_P.Kp2;

  /* DiscreteStateSpace: '<S13>/Internal' */
  {
    ArmSim_B.Internal_k = (ArmSim_P.Internal_C_m)*ArmSim_DW.Internal_DSTATE_l;
    ArmSim_B.Internal_k += ArmSim_P.Internal_D_m*ArmSim_B.Gain1;
  }

  /* Gain: '<S6>/Kd' incorporates:
   *  Sum: '<S6>/Sum2'
   */
  ArmSim_B.Kd_l = (0.0 - ArmSim_B.Internal_k) * ArmSim_P.Kd2;

  /* Sum: '<S6>/Sum1' */
  u0 = rtb_Sum_c + ArmSim_B.Kd_l;

  /* Saturate: '<S6>/Saturation1' */
  if (u0 > ArmSim_P.Saturation1_UpperSat_f) {
    u0 = ArmSim_P.Saturation1_UpperSat_f;
  } else {
    if (u0 < ArmSim_P.Saturation1_LowerSat_h) {
      u0 = ArmSim_P.Saturation1_LowerSat_h;
    }
  }

  /* DataTypeConversion: '<S6>/Data Type Conversion3' incorporates:
   *  Saturate: '<S6>/Saturation1'
   */
  u0 = floor(u0);
  if (rtIsNaN(u0) || rtIsInf(u0)) {
    u0 = 0.0;
  } else {
    u0 = fmod(u0, 256.0);
  }

  ArmSim_B.DataTypeConversion3_i = (int8_T)(u0 < 0.0 ? (int32_T)(int8_T)-(int8_T)
    (uint8_T)-u0 : (int32_T)(int8_T)(uint8_T)u0);

  /* End of DataTypeConversion: '<S6>/Data Type Conversion3' */

  /* S-Function (nxt_motor): '<S14>/Motor' */
  tmp_0 = ArmSim_B.DataTypeConversion3_i;
  setMotor(&tmp_0, 2U, 2U);
}

/* Model update function */
void ArmSim_update(void)
{
  /* Update for DiscreteTransferFcn: '<S5>/Integral' */
  ArmSim_DW.Integral_states = (ArmSim_B.Ki - ArmSim_P.Integral_DenCoef[1] *
    ArmSim_DW.Integral_states) / ArmSim_P.Integral_DenCoef[0];

  /* Update for DiscreteStateSpace: '<S8>/Internal' */
  {
    real_T xnew[1];
    xnew[0] = ArmSim_P.Internal_A*ArmSim_DW.Internal_DSTATE;
    xnew[0] += ArmSim_P.Internal_B*ArmSim_B.Gain1_c;
    (void) memcpy(&ArmSim_DW.Internal_DSTATE, xnew,
                  sizeof(real_T)*1);
  }

  /* Update for DiscreteStateSpace: '<S13>/Internal' */
  {
    real_T xnew[1];
    xnew[0] = ArmSim_P.Internal_A_k*ArmSim_DW.Internal_DSTATE_l;
    xnew[0] += ArmSim_P.Internal_B_h*ArmSim_B.Gain1;
    (void) memcpy(&ArmSim_DW.Internal_DSTATE_l, xnew,
                  sizeof(real_T)*1);
  }

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.0s, 0.0s] */
    if ((rtmGetTFinal(ArmSim_M)!=-1) &&
        !((rtmGetTFinal(ArmSim_M)-ArmSim_M->Timing.t[0]) > ArmSim_M->Timing.t[0]
          * (DBL_EPSILON))) {
      rtmSetErrorStatus(ArmSim_M, "Simulation finished");
    }

    if (rtmGetStopRequested(ArmSim_M)) {
      rtmSetErrorStatus(ArmSim_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   */
  ArmSim_M->Timing.t[0] =
    (++ArmSim_M->Timing.clockTick0) * ArmSim_M->Timing.stepSize0;

  {
    /* Update absolute timer for sample time: [0.01s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The resolution of this integer timer is 0.01, which is the step size
     * of the task. Size of "clockTick1" ensures timer will not overflow during the
     * application lifespan selected.
     */
    ArmSim_M->Timing.clockTick1++;
  }
}

/* Model initialize function */
void ArmSim_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)ArmSim_M, 0,
                sizeof(RT_MODEL_ArmSim_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&ArmSim_M->solverInfo, &ArmSim_M->Timing.simTimeStep);
    rtsiSetTPtr(&ArmSim_M->solverInfo, &rtmGetTPtr(ArmSim_M));
    rtsiSetStepSizePtr(&ArmSim_M->solverInfo, &ArmSim_M->Timing.stepSize0);
    rtsiSetErrorStatusPtr(&ArmSim_M->solverInfo, (&rtmGetErrorStatus(ArmSim_M)));
    rtsiSetRTModelPtr(&ArmSim_M->solverInfo, ArmSim_M);
  }

  rtsiSetSimTimeStep(&ArmSim_M->solverInfo, MAJOR_TIME_STEP);
  rtsiSetSolverName(&ArmSim_M->solverInfo,"FixedStepDiscrete");
  rtmSetTPtr(ArmSim_M, &ArmSim_M->Timing.tArray[0]);
  rtmSetTFinal(ArmSim_M, 100.0);
  ArmSim_M->Timing.stepSize0 = 0.01;

  /* External mode info */
  ArmSim_M->Sizes.checksums[0] = (4013912185U);
  ArmSim_M->Sizes.checksums[1] = (3723402334U);
  ArmSim_M->Sizes.checksums[2] = (494361086U);
  ArmSim_M->Sizes.checksums[3] = (303373797U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[6];
    ArmSim_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    systemRan[5] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(ArmSim_M->extModeInfo,
      &ArmSim_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(ArmSim_M->extModeInfo, ArmSim_M->Sizes.checksums);
    rteiSetTPtr(ArmSim_M->extModeInfo, rtmGetTPtr(ArmSim_M));
  }

  /* block I/O */
  (void) memset(((void *) &ArmSim_B), 0,
                sizeof(B_ArmSim_T));

  /* states (dwork) */
  (void) memset((void *)&ArmSim_DW, 0,
                sizeof(DW_ArmSim_T));

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    ArmSim_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 14;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.B = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.P = &rtPTransTable;
  }

  /* InitializeConditions for MATLAB Function: '<Root>/Reset Clock' */
  ArmSim_DW.t_off = 0.0;
  ArmSim_DW.last_rst = 0.0;

  /* InitializeConditions for MATLAB Function: '<Root>/Motor A Throw' */
  ArmSim_MotorAThrow_Init(&ArmSim_DW.sf_MotorAThrow);

  /* InitializeConditions for MATLAB Function: '<Root>/Init Motor A' */
  ArmSim_InitMotorA_Init(&ArmSim_DW.sf_InitMotorA);

  /* InitializeConditions for MATLAB Function: '<Root>/Motor B Throw' */
  ArmSim_MotorAThrow_Init(&ArmSim_DW.sf_MotorBThrow);

  /* InitializeConditions for MATLAB Function: '<Root>/Init Motor B' */
  ArmSim_InitMotorA_Init(&ArmSim_DW.sf_InitMotorB);

  /* InitializeConditions for DiscreteTransferFcn: '<S5>/Integral' */
  ArmSim_DW.Integral_states = ArmSim_P.Integral_InitialStates;

  /* InitializeConditions for DiscreteStateSpace: '<S8>/Internal' */
  ArmSim_DW.Internal_DSTATE = ArmSim_P.Internal_X0;

  /* InitializeConditions for DiscreteStateSpace: '<S13>/Internal' */
  ArmSim_DW.Internal_DSTATE_l = ArmSim_P.Internal_X0_h;
}

/* Model terminate function */
void ArmSim_terminate(void)
{
  /* Terminate for S-Function (nxt_motor): '<S9>/Motor' */
  terminateMotor(1U, 2U);

  /* Terminate for S-Function (nxt_motor): '<S14>/Motor' */
  terminateMotor(2U, 2U);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
