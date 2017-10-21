/*
 * File: ArmSim_private.h
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

#ifndef RTW_HEADER_ArmSim_private_h_
#define RTW_HEADER_ArmSim_private_h_
#include "rtwtypes.h"
#include "multiword_types.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmIsMajorTimeStep
# define rtmIsMajorTimeStep(rtm)       (((rtm)->Timing.simTimeStep) == MAJOR_TIME_STEP)
#endif

#ifndef rtmIsMinorTimeStep
# define rtmIsMinorTimeStep(rtm)       (((rtm)->Timing.simTimeStep) == MINOR_TIME_STEP)
#endif

#ifndef rtmSetTFinal
# define rtmSetTFinal(rtm, val)        ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetTPtr
# define rtmGetTPtr(rtm)               ((rtm)->Timing.t)
#endif

#ifndef rtmSetTPtr
# define rtmSetTPtr(rtm, val)          ((rtm)->Timing.t = (val))
#endif

#ifndef __RTWTYPES_H__
#error This file requires rtwtypes.h to be included
#endif                                 /* __RTWTYPES_H__ */

extern void ArmSim_InitMotorA_Init(DW_InitMotorA_ArmSim_T *localDW);
extern void ArmSim_InitMotorA(real_T rtu_t_in, real_T rtu_is_run, real_T
  rtu_curr_angle, B_InitMotorA_ArmSim_T *localB, DW_InitMotorA_ArmSim_T *localDW);
extern void ArmSim_MotorAThrow_Init(DW_MotorAThrow_ArmSim_T *localDW);
extern void ArmSim_MotorAThrow(real_T rtu_t_in, real_T rtu_is_run, const real_T
  rtu_theta[10], const real_T rtu_dtheta[10], B_MotorAThrow_ArmSim_T *localB,
  DW_MotorAThrow_ArmSim_T *localDW);

#endif                                 /* RTW_HEADER_ArmSim_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
