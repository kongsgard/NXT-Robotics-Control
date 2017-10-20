/*
 * File: ballTossController.h
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

#ifndef RTW_HEADER_ballTossController_h_
#define RTW_HEADER_ballTossController_h_
#include <string.h>
#include <math.h>
#include <float.h>
#include <stddef.h>
#ifndef ballTossController_COMMON_INCLUDES_
# define ballTossController_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "dt_info.h"
#include "ext_work.h"
#include "driver_nxt.h"
#endif                                 /* ballTossController_COMMON_INCLUDES_ */

#include "ballTossController_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rtGetNaN.h"
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

/* Block signals for system '<Root>/INIT' */
typedef struct {
  real_T ref_cur;                      /* '<Root>/INIT' */
} B_INIT_ballTossController_T;

/* Block signals for system '<Root>/THROW' */
typedef struct {
  real_T ref_cur;                      /* '<Root>/THROW' */
  real_T dref_cur;                     /* '<Root>/THROW' */
} B_THROW_ballTossController_T;

/* Block signals (auto storage) */
typedef struct {
  real_T THROWSWITCH;                  /* '<Root>/THROW SWITCH' */
  real_T Switch;                       /* '<Root>/Switch' */
  real_T Gain1;                        /* '<S16>/Gain1' */
  real_T Sum;                          /* '<S6>/Sum' */
  real_T Gain1_i;                      /* '<S6>/Gain1' */
  real_T Sum1;                         /* '<S6>/Sum1' */
  real_T Switch2;                      /* '<Root>/Switch2' */
  real_T Gain1_c;                      /* '<S24>/Gain1' */
  real_T Sum_g;                        /* '<S7>/Sum' */
  real_T Gain1_a;                      /* '<S7>/Gain1' */
  real_T Sum1_o;                       /* '<S7>/Sum1' */
  real_T Internal;                     /* '<S3>/Internal' */
  real_T Switch1;                      /* '<Root>/Switch1' */
  real_T Internal_i;                   /* '<S4>/Internal' */
  real_T Switch3;                      /* '<Root>/Switch3' */
  int32_T DataTypeConversion1;         /* '<S6>/Data Type Conversion1' */
  int32_T DataTypeConversion1_j;       /* '<S7>/Data Type Conversion1' */
  B_THROW_ballTossController_T sf_THROW1;/* '<Root>/THROW1' */
  B_THROW_ballTossController_T sf_THROW;/* '<Root>/THROW' */
  B_INIT_ballTossController_T sf_INIT1;/* '<Root>/INIT1' */
  B_INIT_ballTossController_T sf_INIT; /* '<Root>/INIT' */
} B_ballTossController_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T Internal_DSTATE;              /* '<S17>/Internal' */
  real_T Internal_DSTATE_j;            /* '<S25>/Internal' */
  real_T Internal_DSTATE_p;            /* '<S3>/Internal' */
  real_T Internal_DSTATE_l;            /* '<S4>/Internal' */
  real_T t_off;                        /* '<Root>/MATLAB Function3' */
  real_T last_rst;                     /* '<Root>/MATLAB Function3' */
  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<S6>/Scope' */

  struct {
    void *LoggedData;
  } Scope1_PWORK;                      /* '<S6>/Scope1' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK;                 /* '<S6>/To Workspace' */

  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK;                /* '<S6>/To Workspace1' */

  struct {
    void *LoggedData;
  } Scope_PWORK_a;                     /* '<S7>/Scope' */

  struct {
    void *LoggedData;
  } Scope1_PWORK_b;                    /* '<S7>/Scope1' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK_h;               /* '<S7>/To Workspace' */

  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK_j;              /* '<S7>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK_d;               /* '<Root>/To Workspace' */

  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK_b;              /* '<Root>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace2_PWORK;                /* '<Root>/To Workspace2' */

  struct {
    void *LoggedData;
  } ToWorkspace3_PWORK;                /* '<Root>/To Workspace3' */
} DW_ballTossController_T;

/* Parameters (auto storage) */
struct P_ballTossController_T_ {
  real_T Kd1;                          /* Variable: Kd1
                                        * Referenced by: '<S6>/Gain1'
                                        */
  real_T Kd2;                          /* Variable: Kd2
                                        * Referenced by: '<S7>/Gain1'
                                        */
  real_T Kp1;                          /* Variable: Kp1
                                        * Referenced by: '<S6>/Gain'
                                        */
  real_T Kp2;                          /* Variable: Kp2
                                        * Referenced by: '<S7>/Gain'
                                        */
  real_T dtheta1_throw_traj[10];       /* Variable: dtheta1_throw_traj
                                        * Referenced by: '<Root>/Constant3'
                                        */
  real_T dtheta2_throw_traj[10];       /* Variable: dtheta2_throw_traj
                                        * Referenced by: '<Root>/Constant8'
                                        */
  real_T t_ref_init[10];               /* Variable: t_ref_init
                                        * Referenced by: '<Root>/Constant1'
                                        */
  real_T t_ref_throw[10];              /* Variable: t_ref_throw
                                        * Referenced by: '<Root>/Constant4'
                                        */
  real_T theta1_init_traj[10];         /* Variable: theta1_init_traj
                                        * Referenced by: '<Root>/Constant'
                                        */
  real_T theta1_throw_traj[10];        /* Variable: theta1_throw_traj
                                        * Referenced by: '<Root>/Constant2'
                                        */
  real_T theta2_init_traj[10];         /* Variable: theta2_init_traj
                                        * Referenced by: '<Root>/Constant5'
                                        */
  real_T theta2_throw_traj[10];        /* Variable: theta2_throw_traj
                                        * Referenced by: '<Root>/Constant7'
                                        */
  real_T Initon_Value;                 /* Expression: 0
                                        * Referenced by: '<Root>/Init on'
                                        */
  real_T Throwon_Value;                /* Expression: 1
                                        * Referenced by: '<Root>/Throw on'
                                        */
  real_T Switch_Threshold;             /* Expression: 0
                                        * Referenced by: '<Root>/Switch'
                                        */
  real_T Gain1_Gain;                   /* Expression: pi/180
                                        * Referenced by: '<S16>/Gain1'
                                        */
  real_T Internal_A;                   /* Computed Parameter: Internal_A
                                        * Referenced by: '<S17>/Internal'
                                        */
  real_T Internal_B;                   /* Computed Parameter: Internal_B
                                        * Referenced by: '<S17>/Internal'
                                        */
  real_T Internal_C;                   /* Computed Parameter: Internal_C
                                        * Referenced by: '<S17>/Internal'
                                        */
  real_T Internal_D;                   /* Computed Parameter: Internal_D
                                        * Referenced by: '<S17>/Internal'
                                        */
  real_T Internal_X0;                  /* Expression: 0
                                        * Referenced by: '<S17>/Internal'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 100
                                        * Referenced by: '<S6>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: -100
                                        * Referenced by: '<S6>/Saturation'
                                        */
  real_T Switch2_Threshold;            /* Expression: 0
                                        * Referenced by: '<Root>/Switch2'
                                        */
  real_T Gain1_Gain_o;                 /* Expression: pi/180
                                        * Referenced by: '<S24>/Gain1'
                                        */
  real_T Internal_A_g;                 /* Computed Parameter: Internal_A_g
                                        * Referenced by: '<S25>/Internal'
                                        */
  real_T Internal_B_p;                 /* Computed Parameter: Internal_B_p
                                        * Referenced by: '<S25>/Internal'
                                        */
  real_T Internal_C_m;                 /* Computed Parameter: Internal_C_m
                                        * Referenced by: '<S25>/Internal'
                                        */
  real_T Internal_D_p;                 /* Computed Parameter: Internal_D_p
                                        * Referenced by: '<S25>/Internal'
                                        */
  real_T Internal_X0_k;                /* Expression: 0
                                        * Referenced by: '<S25>/Internal'
                                        */
  real_T Saturation_UpperSat_i;        /* Expression: 100
                                        * Referenced by: '<S7>/Saturation'
                                        */
  real_T Saturation_LowerSat_f;        /* Expression: -100
                                        * Referenced by: '<S7>/Saturation'
                                        */
  real_T Internal_A_gu;                /* Computed Parameter: Internal_A_gu
                                        * Referenced by: '<S3>/Internal'
                                        */
  real_T Internal_B_i;                 /* Computed Parameter: Internal_B_i
                                        * Referenced by: '<S3>/Internal'
                                        */
  real_T Internal_C_b;                 /* Computed Parameter: Internal_C_b
                                        * Referenced by: '<S3>/Internal'
                                        */
  real_T Internal_D_n;                 /* Computed Parameter: Internal_D_n
                                        * Referenced by: '<S3>/Internal'
                                        */
  real_T Internal_X0_l;                /* Expression: 0
                                        * Referenced by: '<S3>/Internal'
                                        */
  real_T Switch1_Threshold;            /* Expression: 0
                                        * Referenced by: '<Root>/Switch1'
                                        */
  real_T Internal_A_f;                 /* Computed Parameter: Internal_A_f
                                        * Referenced by: '<S4>/Internal'
                                        */
  real_T Internal_B_p2;                /* Computed Parameter: Internal_B_p2
                                        * Referenced by: '<S4>/Internal'
                                        */
  real_T Internal_C_j;                 /* Computed Parameter: Internal_C_j
                                        * Referenced by: '<S4>/Internal'
                                        */
  real_T Internal_D_e;                 /* Computed Parameter: Internal_D_e
                                        * Referenced by: '<S4>/Internal'
                                        */
  real_T Internal_X0_m;                /* Expression: 0
                                        * Referenced by: '<S4>/Internal'
                                        */
  real_T Switch3_Threshold;            /* Expression: 0
                                        * Referenced by: '<Root>/Switch3'
                                        */
  uint8_T THROWSWITCH_CurrentSetting;  /* Computed Parameter: THROWSWITCH_CurrentSetting
                                        * Referenced by: '<Root>/THROW SWITCH'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_ballTossController_T {
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
extern P_ballTossController_T ballTossController_P;

/* Block signals (auto storage) */
extern B_ballTossController_T ballTossController_B;

/* Block states (auto storage) */
extern DW_ballTossController_T ballTossController_DW;

/* Model entry point functions */
extern void ballTossController_initialize(void);
extern void ballTossController_output(void);
extern void ballTossController_update(void);
extern void ballTossController_terminate(void);

/* Real-time Model object */
extern RT_MODEL_ballTossController_T *const ballTossController_M;

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
 * '<Root>' : 'ballTossController'
 * '<S1>'   : 'ballTossController/INIT'
 * '<S2>'   : 'ballTossController/INIT1'
 * '<S3>'   : 'ballTossController/LTI System'
 * '<S4>'   : 'ballTossController/LTI System1'
 * '<S5>'   : 'ballTossController/MATLAB Function3'
 * '<S6>'   : 'ballTossController/MOTOR B CONTROL (theta 1)'
 * '<S7>'   : 'ballTossController/MOTOR C CONTROL (theta 2)'
 * '<S8>'   : 'ballTossController/THROW'
 * '<S9>'   : 'ballTossController/THROW1'
 * '<S10>'  : 'ballTossController/LTI System/IO Delay'
 * '<S11>'  : 'ballTossController/LTI System/Input Delay'
 * '<S12>'  : 'ballTossController/LTI System/Output Delay'
 * '<S13>'  : 'ballTossController/LTI System1/IO Delay'
 * '<S14>'  : 'ballTossController/LTI System1/Input Delay'
 * '<S15>'  : 'ballTossController/LTI System1/Output Delay'
 * '<S16>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/Degrees to Radians'
 * '<S17>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/LTI System'
 * '<S18>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/MATLAB Function'
 * '<S19>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/Motor1'
 * '<S20>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/Ramp'
 * '<S21>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/LTI System/IO Delay'
 * '<S22>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/LTI System/Input Delay'
 * '<S23>'  : 'ballTossController/MOTOR B CONTROL (theta 1)/LTI System/Output Delay'
 * '<S24>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/Degrees to Radians'
 * '<S25>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/LTI System'
 * '<S26>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/MATLAB Function'
 * '<S27>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/Motor1'
 * '<S28>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/Ramp'
 * '<S29>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/LTI System/IO Delay'
 * '<S30>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/LTI System/Input Delay'
 * '<S31>'  : 'ballTossController/MOTOR C CONTROL (theta 2)/LTI System/Output Delay'
 */
#endif                                 /* RTW_HEADER_ballTossController_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
