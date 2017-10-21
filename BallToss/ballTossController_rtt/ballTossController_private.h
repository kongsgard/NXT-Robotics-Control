/*
 * File: ballTossController_private.h
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

#ifndef RTW_HEADER_ballTossController_private_h_
#define RTW_HEADER_ballTossController_private_h_
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

extern void ballTossController_INIT(const real_T rtu_traj_in[10], const real_T
  rtu_t_ref[10], real_T rtu_t_in, B_INIT_ballTossController_T *localB);
extern void ballTossController_THROW(const real_T rtu_traj_in[10], const real_T
  rtu_dtraj_in[10], const real_T rtu_t_ref[10], real_T rtu_t_in,
  B_THROW_ballTossController_T *localB);

#endif                                 /* RTW_HEADER_ballTossController_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
