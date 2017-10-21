/*
 * File: ArmSim_data.c
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

/* Block parameters (auto storage) */
P_ArmSim_T ArmSim_P = {
  1.0,                                 /* Variable: Kd1
                                        * Referenced by:
                                        *   '<S5>/Kd'
                                        *   '<S5>/Kp'
                                        */
  1.0,                                 /* Variable: Kd2
                                        * Referenced by: '<S6>/Kd'
                                        */
  180.0,                               /* Variable: Kp2
                                        * Referenced by: '<S6>/Kp'
                                        */

  /*  Variable: dtheta1_throw_traj
   * Referenced by: '<Root>/dtheta 1'
   */
  { 0.0, 0.0, 0.0, 130.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },

  /*  Variable: dtheta2_throw_traj
   * Referenced by: '<Root>/dtheta 2'
   */
  { 0.0, 0.0, 0.0, 100.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },

  /*  Variable: theta1_throw_traj
   * Referenced by: '<Root>/theta 1'
   */
  { 0.0, 0.0, 0.0, 1.3, 1.3, 1.3, 1.3, 1.3, 1.3, 1.3 },

  /*  Variable: theta2_throw_traj
   * Referenced by: '<Root>/theta 2'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0 },
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S6>/Gain1'
                                        */
  0.017453292519943295,                /* Expression: pi/180
                                        * Referenced by: '<S5>/Gain1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/S0'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<Root>/S1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch2'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Switch3'
                                        */
  1.0,                                 /* Expression: [1]
                                        * Referenced by: '<S5>/Integral'
                                        */

  /*  Expression: [1 -1]
   * Referenced by: '<S5>/Integral'
   */
  { 1.0, -1.0 },
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S5>/Integral'
                                        */
  0.81818181818181823,                 /* Computed Parameter: Internal_A
                                        * Referenced by: '<S8>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B
                                        * Referenced by: '<S8>/Internal'
                                        */
  -1.6528925619834709,                 /* Computed Parameter: Internal_C
                                        * Referenced by: '<S8>/Internal'
                                        */
  18.181818181818183,                  /* Computed Parameter: Internal_D
                                        * Referenced by: '<S8>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S8>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S5>/Saturation1'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S5>/Saturation1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S5>/Ki'
                                        */
  0.81818181818181823,                 /* Computed Parameter: Internal_A_k
                                        * Referenced by: '<S13>/Internal'
                                        */
  2.0,                                 /* Computed Parameter: Internal_B_h
                                        * Referenced by: '<S13>/Internal'
                                        */
  -1.6528925619834709,                 /* Computed Parameter: Internal_C_m
                                        * Referenced by: '<S13>/Internal'
                                        */
  18.181818181818183,                  /* Computed Parameter: Internal_D_m
                                        * Referenced by: '<S13>/Internal'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S13>/Internal'
                                        */
  100.0,                               /* Expression: 100
                                        * Referenced by: '<S6>/Saturation1'
                                        */
  -100.0,                              /* Expression: -100
                                        * Referenced by: '<S6>/Saturation1'
                                        */
  1U                                   /* Computed Parameter: ManualSwitch_CurrentSetting
                                        * Referenced by: '<Root>/Manual Switch'
                                        */
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
