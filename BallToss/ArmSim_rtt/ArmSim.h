/*
 * File: ArmSim.h
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

#ifndef RTW_HEADER_ArmSim_h_
#define RTW_HEADER_ArmSim_h_
#include <string.h>
#include <math.h>
#include <float.h>
#include <stddef.h>
#ifndef ArmSim_COMMON_INCLUDES_
# define ArmSim_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "dt_info.h"
#include "ext_work.h"
#include "driver_nxt.h"
#endif                                 /* ArmSim_COMMON_INCLUDES_ */

#include "ArmSim_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

/* Block signals for system '<Root>/Init Motor A' */
typedef struct {
  real_T angle;                        /* '<Root>/Init Motor A' */
  real_T velocity;                     /* '<Root>/Init Motor A' */
} B_InitMotorA_ArmSim_T;

/* Block states (auto storage) for system '<Root>/Init Motor A' */
typedef struct {
  real_T max_angle;                    /* '<Root>/Init Motor A' */
} DW_InitMotorA_ArmSim_T;

/* Block signals for system '<Root>/Motor A Throw' */
typedef struct {
  real_T angle;                        /* '<Root>/Motor A Throw' */
  real_T velocity;                     /* '<Root>/Motor A Throw' */
} B_MotorAThrow_ArmSim_T;

/* Block states (auto storage) for system '<Root>/Motor A Throw' */
typedef struct {
  real_T count;                        /* '<Root>/Motor A Throw' */
  real_T t_curr;                       /* '<Root>/Motor A Throw' */
} DW_MotorAThrow_ArmSim_T;

/* Block signals (auto storage) */
typedef struct {
  real_T Gain1;                        /* '<S6>/Gain1' */
  real_T Gain1_c;                      /* '<S5>/Gain1' */
  real_T ManualSwitch;                 /* '<Root>/Manual Switch' */
  real_T Switch;                       /* '<Root>/Switch' */
  real_T Switch1;                      /* '<Root>/Switch1' */
  real_T Switch2;                      /* '<Root>/Switch2' */
  real_T Switch3;                      /* '<Root>/Switch3' */
  real_T Integral;                     /* '<S5>/Integral' */
  real_T Internal;                     /* '<S8>/Internal' */
  real_T Kd;                           /* '<S5>/Kd' */
  real_T Ki;                           /* '<S5>/Ki' */
  real_T Internal_k;                   /* '<S13>/Internal' */
  real_T Kd_l;                         /* '<S6>/Kd' */
  int8_T DataTypeConversion3;          /* '<S5>/Data Type Conversion3' */
  int8_T DataTypeConversion3_i;        /* '<S6>/Data Type Conversion3' */
  B_MotorAThrow_ArmSim_T sf_MotorBThrow;/* '<Root>/Motor B Throw' */
  B_MotorAThrow_ArmSim_T sf_MotorAThrow;/* '<Root>/Motor A Throw' */
  B_InitMotorA_ArmSim_T sf_InitMotorB; /* '<Root>/Init Motor B' */
  B_InitMotorA_ArmSim_T sf_InitMotorA; /* '<Root>/Init Motor A' */
} B_ArmSim_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T Integral_states;              /* '<S5>/Integral' */
  real_T Internal_DSTATE;              /* '<S8>/Internal' */
  real_T Internal_DSTATE_l;            /* '<S13>/Internal' */
  real_T t_off;                        /* '<Root>/Reset Clock' */
  real_T last_rst;                     /* '<Root>/Reset Clock' */
  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK;                /* '<Root>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace2_PWORK;                /* '<Root>/To Workspace2' */

  struct {
    void *LoggedData;
  } ToWorkspace3_PWORK;                /* '<Root>/To Workspace3' */

  struct {
    void *LoggedData;
  } ToWorkspace4_PWORK;                /* '<Root>/To Workspace4' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK;                /* '<Root>/To Workspace5' */

  struct {
    void *LoggedData;
  } ToWorkspace6_PWORK;                /* '<Root>/To Workspace6' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK_j;              /* '<S5>/To Workspace5' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK_b;              /* '<S6>/To Workspace5' */

  DW_MotorAThrow_ArmSim_T sf_MotorBThrow;/* '<Root>/Motor B Throw' */
  DW_MotorAThrow_ArmSim_T sf_MotorAThrow;/* '<Root>/Motor A Throw' */
  DW_InitMotorA_ArmSim_T sf_InitMotorB;/* '<Root>/Init Motor B' */
  DW_InitMotorA_ArmSim_T sf_InitMotorA;/* '<Root>/Init Motor A' */
} DW_ArmSim_T;

/* Parameters (auto storage) */
struct P_ArmSim_T_ {
  real_T Kd1;                          /* Variable: Kd1
                                        * Referenced by:
                                        *   '<S5>/Kd'
                                        *   '<S5>/Kp'
                                        */
  real_T Kd2;                          /* Variable: Kd2
                                        * Referenced by: '<S6>/Kd'
                                        */
  real_T Kp2;                          /* Variable: Kp2
                                        * Referenced by: '<S6>/Kp'
                                        */
  real_T dtheta1_throw_traj[10];       /* Variable: dtheta1_throw_traj
                                        * Referenced by: '<Root>/dtheta 1'
                                        */
  real_T dtheta2_throw_traj[10];       /* Variable: dtheta2_throw_traj
                                        * Referenced by: '<Root>/dtheta 2'
                                        */
  real_T theta1_throw_traj[10];        /* Variable: theta1_throw_traj
                                        * Referenced by: '<Root>/theta 1'
                                        */
  real_T theta2_throw_traj[10];        /* Variable: theta2_throw_traj
                                        * Referenced by: '<Root>/theta 2'
                                        */
  real_T Gain1_Gain;                   /* Expression: pi/180
                                        * Referenced by: '<S6>/Gain1'
                                        */
  real_T Gain1_Gain_m;                 /* Expression: pi/180
                                        * Referenced by: '<S5>/Gain1'
                                        */
  real_T S0_Value;                     /* Expression: 0
                                        * Referenced by: '<Root>/S0'
                                        */
  real_T S1_Value;                     /* Expression: 1
                                        * Referenced by: '<Root>/S1'
                                        */
  real_T Switch_Threshold;             /* Expression: 0
                                        * Referenced by: '<Root>/Switch'
                                        */
  real_T Switch1_Threshold;            /* Expression: 0
                                        * Referenced by: '<Root>/Switch1'
                                        */
  real_T Switch2_Threshold;            /* Expression: 0
                                        * Referenced by: '<Root>/Switch2'
                                        */
  real_T Switch3_Threshold;            /* Expression: 0
                                        * Referenced by: '<Root>/Switch3'
                                        */
  real_T Integral_NumCoef;             /* Expression: [1]
                                        * Referenced by: '<S5>/Integral'
                                        */
  real_T Integral_DenCoef[2];          /* Expression: [1 -1]
                                        * Referenced by: '<S5>/Integral'
                                        */
  real_T Integral_InitialStates;       /* Expression: 0
                                        * Referenced by: '<S5>/Integral'
                                        */
  real_T Internal_A;                   /* Computed Parameter: Internal_A
                                        * Referenced by: '<S8>/Internal'
                                        */
  real_T Internal_B;                   /* Computed Parameter: Internal_B
                                        * Referenced by: '<S8>/Internal'
                                        */
  real_T Internal_C;                   /* Computed Parameter: Internal_C
                                        * Referenced by: '<S8>/Internal'
                                        */
  real_T Internal_D;                   /* Computed Parameter: Internal_D
                                        * Referenced by: '<S8>/Internal'
                                        */
  real_T Internal_X0;                  /* Expression: 0
                                        * Referenced by: '<S8>/Internal'
                                        */
  real_T Saturation1_UpperSat;         /* Expression: 100
                                        * Referenced by: '<S5>/Saturation1'
                                        */
  real_T Saturation1_LowerSat;         /* Expression: -100
                                        * Referenced by: '<S5>/Saturation1'
                                        */
  real_T Ki_Gain;                      /* Expression: 0
                                        * Referenced by: '<S5>/Ki'
                                        */
  real_T Internal_A_k;                 /* Computed Parameter: Internal_A_k
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_B_h;                 /* Computed Parameter: Internal_B_h
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_C_m;                 /* Computed Parameter: Internal_C_m
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_D_m;                 /* Computed Parameter: Internal_D_m
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Internal_X0_h;                /* Expression: 0
                                        * Referenced by: '<S13>/Internal'
                                        */
  real_T Saturation1_UpperSat_f;       /* Expression: 100
                                        * Referenced by: '<S6>/Saturation1'
                                        */
  real_T Saturation1_LowerSat_h;       /* Expression: -100
                                        * Referenced by: '<S6>/Saturation1'
                                        */
  uint8_T ManualSwitch_CurrentSetting; /* Computed Parameter: ManualSwitch_CurrentSetting
                                        * Referenced by: '<Root>/Manual Switch'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_ArmSim_T {
  const char_T *errorStatus;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    time_T stepSize0;
    uint32_T clockTick1;
    time_T tFinal;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block parameters (auto storage) */
extern P_ArmSim_T ArmSim_P;

/* Block signals (auto storage) */
extern B_ArmSim_T ArmSim_B;

/* Block states (auto storage) */
extern DW_ArmSim_T ArmSim_DW;

/* Model entry point functions */
extern void ArmSim_initialize(void);
extern void ArmSim_output(void);
extern void ArmSim_update(void);
extern void ArmSim_terminate(void);

/* Real-time Model object */
extern RT_MODEL_ArmSim_T *const ArmSim_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'ArmSim'
 * '<S1>'   : 'ArmSim/Init Motor A'
 * '<S2>'   : 'ArmSim/Init Motor B'
 * '<S3>'   : 'ArmSim/Motor A Throw'
 * '<S4>'   : 'ArmSim/Motor B Throw'
 * '<S5>'   : 'ArmSim/MotorA'
 * '<S6>'   : 'ArmSim/MotorB'
 * '<S7>'   : 'ArmSim/Reset Clock'
 * '<S8>'   : 'ArmSim/MotorA/LTI System'
 * '<S9>'   : 'ArmSim/MotorA/Motor1'
 * '<S10>'  : 'ArmSim/MotorA/LTI System/IO Delay'
 * '<S11>'  : 'ArmSim/MotorA/LTI System/Input Delay'
 * '<S12>'  : 'ArmSim/MotorA/LTI System/Output Delay'
 * '<S13>'  : 'ArmSim/MotorB/LTI System'
 * '<S14>'  : 'ArmSim/MotorB/Motor1'
 * '<S15>'  : 'ArmSim/MotorB/LTI System/IO Delay'
 * '<S16>'  : 'ArmSim/MotorB/LTI System/Input Delay'
 * '<S17>'  : 'ArmSim/MotorB/LTI System/Output Delay'
 */
#endif                                 /* RTW_HEADER_ArmSim_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
