/*
 * File: ballTossController_data.c
 *
 * Code generated for Simulink model 'ballTossController'.
 *
 * Model version                  : 1.12
 * Simulink Coder version         : 8.6 (R2014a) 27-Dec-2013
 * TLC version                    : 8.6 (Jan 30 2014)
 * C/C++ source code generated on : Fri Oct 20 15:20:33 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ballTossController.h"
#include "ballTossController_private.h"

/* Block parameters (auto storage) */
P_ballTossController_T ballTossController_P = {
  1.0,                                 /* Variable: Kd1
                                        * Referenced by: '<S6>/Gain1'
                                        */
  1.0,                                 /* Variable: Kd2
                                        * Referenced by: '<S7>/Gain1'
                                        */
  180.0,                               /* Variable: Kp1
                                        * Referenced by: '<S6>/Gain'
                                        */
  180.0,                               /* Variable: Kp2
                                        * Referenced by: '<S7>/Gain'
                                        */

  /*  Variable: dtheta1_throw_traj
   * Referenced by: '<Root>/Constant3'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: dtheta2_throw_traj
   * Referenced by: '<Root>/Constant8'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: t_ref_init
   * Referenced by: '<Root>/Constant1'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: t_ref_throw
   * Referenced by: '<Root>/Constant4'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: theta1_init_traj
   * Referenced by: '<Root>/Constant'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: theta1_throw_traj
   * Referenced by: '<Root>/Constant2'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: theta2_init_traj
   * Referenced by: '<Root>/Constant5'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },

  /*  Variable: theta2_throw_traj
   * Referenced by: '<Root>/Constant7'
   */
  { 0.0, 0.1111111111111111, 0.22222222222222221, 0.33333333333333331,
    0.44444444444444442, 0.55555555555555558, 0.66666666666666663,
    0.77777777777777779, 0.88888888888888884, 1.0 },
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Init on'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<Root>/Throw on'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S16>/Gain1'
                                        */
  0.81818181818181823,                 /* Computed Parameter: Internal_A
                                        * Referenced by: '<S17>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B
                                        * Referenced by: '<S17>/Internal'
                                        */
  -1.6528925619834709,                 /* Computed Parameter: Internal_C
                                        * Referenced by: '<S17>/Internal'
                                        */
  18.181818181818183,                  /* Computed Parameter: Internal_D
                                        * Referenced by: '<S17>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S17>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S6>/Saturation'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S6>/Saturation'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch2'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S22>/Gain1'
                                        */
  0.81818181818181823,                 /* Computed Parameter: Internal_A_g
                                        * Referenced by: '<S23>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B_p
                                        * Referenced by: '<S23>/Internal'
                                        */
  -1.6528925619834709,                 /* Computed Parameter: Internal_C_m
                                        * Referenced by: '<S23>/Internal'
                                        */
  18.181818181818183,                  /* Computed Parameter: Internal_D_p
                                        * Referenced by: '<S23>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S23>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S7>/Saturation'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S7>/Saturation'
                                        */
  0.81818181818181823,                 /* Computed Parameter: Internal_A_gu
                                        * Referenced by: '<S3>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B_i
                                        * Referenced by: '<S3>/Internal'
                                        */
  -1.6528925619834709,                 /* Computed Parameter: Internal_C_b
                                        * Referenced by: '<S3>/Internal'
                                        */
  18.181818181818183,                  /* Computed Parameter: Internal_D_n
                                        * Referenced by: '<S3>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S3>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch1'
                                        */
  0.81818181818181823,                 /* Computed Parameter: Internal_A_f
                                        * Referenced by: '<S4>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B_p2
                                        * Referenced by: '<S4>/Internal'
                                        */
  -1.6528925619834709,                 /* Computed Parameter: Internal_C_j
                                        * Referenced by: '<S4>/Internal'
                                        */
  18.181818181818183,                  /* Computed Parameter: Internal_D_e
                                        * Referenced by: '<S4>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S4>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch3'
                                        */
  0U                                   /* Computed Parameter: THROWSWITCH_CurrentSetting
                                        * Referenced by: '<Root>/THROW SWITCH'
                                        */
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
