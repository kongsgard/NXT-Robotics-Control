/*
 * File: Lab2a_template_data.c
 *
 * Code generated for Simulink model 'Lab2a_template'.
 *
 * Model version                  : 1.37
 * Simulink Coder version         : 8.6 (R2014a) 27-Dec-2013
 * TLC version                    : 8.6 (Jan 30 2014)
 * C/C++ source code generated on : Wed Nov 01 20:01:37 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "Lab2a_template.h"
#include "Lab2a_template_private.h"

/* Block parameters (auto storage) */
P_Lab2a_template_T Lab2a_template_P = {
  1.0,                                 /* Variable: Kd
                                        * Referenced by:
                                        *   '<S4>/Gain1'
                                        *   '<S5>/Gain1'
                                        *   '<S6>/Gain1'
                                        */
  10.0,                                /* Variable: Kp
                                        * Referenced by:
                                        *   '<S4>/Gain'
                                        *   '<S5>/Gain'
                                        *   '<S6>/Gain'
                                        */
  0.3,                                 /* Variable: Ts_traj
                                        * Referenced by: '<Root>/Constant'
                                        */
  1.3990811024692211,                  /* Variable: traj_A
                                        * Referenced by: '<Root>/Constant1'
                                        */
  3.380518516124543,                   /* Variable: traj_B
                                        * Referenced by: '<Root>/Constant4'
                                        */
  3.8077059889191194,                  /* Variable: traj_C
                                        * Referenced by: '<Root>/Constant7'
                                        */
  4.6636036748974039,                  /* Variable: traj_dA
                                        * Referenced by: '<Root>/Constant2'
                                        */
  6.6047913788510746,                  /* Variable: traj_dB
                                        * Referenced by: '<Root>/Constant5'
                                        */
  1.4239582426485891,                  /* Variable: traj_dC
                                        * Referenced by: '<Root>/Constant8'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Off//Reset'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<Root>/On'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S1>/Gain'
                                        */
  -0.49999999999999994,                /* Computed Parameter: Internal_A
                                        * Referenced by: '<S11>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B
                                        * Referenced by: '<S11>/Internal'
                                        */
  -3.75,                               /* Computed Parameter: Internal_C
                                        * Referenced by: '<S11>/Internal'
                                        */
  5.0,                                 /* Computed Parameter: Internal_D
                                        * Referenced by: '<S11>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S11>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S1>/Saturation'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S1>/Saturation'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S2>/Gain1'
                                        */
  -0.49999999999999994,                /* Computed Parameter: Internal_A_j
                                        * Referenced by: '<S12>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B_m
                                        * Referenced by: '<S12>/Internal'
                                        */
  -3.75,                               /* Computed Parameter: Internal_C_a
                                        * Referenced by: '<S12>/Internal'
                                        */
  5.0,                                 /* Computed Parameter: Internal_D_g
                                        * Referenced by: '<S12>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S12>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S2>/Saturation1'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S2>/Saturation1'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S3>/Gain2'
                                        */
  -0.49999999999999994,                /* Computed Parameter: Internal_A_l
                                        * Referenced by: '<S13>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B_l
                                        * Referenced by: '<S13>/Internal'
                                        */
  -3.75,                               /* Computed Parameter: Internal_C_i
                                        * Referenced by: '<S13>/Internal'
                                        */
  5.0,                                 /* Computed Parameter: Internal_D_f
                                        * Referenced by: '<S13>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S13>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S3>/Saturation2'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S3>/Saturation2'
                                        */
  1U                                   /* Computed Parameter: timeresetswitch_CurrentSetting
                                        * Referenced by: '<Root>/time reset switch'
                                        */
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
