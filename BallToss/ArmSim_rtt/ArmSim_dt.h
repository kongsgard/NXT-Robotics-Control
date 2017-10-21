/*
 * ArmSim_dt.h
 *
 * Code generation for model "ArmSim".
 *
 * Model version              : 1.358
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Fri Oct 20 18:30:37 2017
 *
 * Target selection: realtime.tlc
 * Embedded hardware selection: ARM Compatible->ARM 7
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ext_types.h"

/* data type size table */
static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T)
};

/* data type name table */
static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T"
};

/* data type transitions for block I/O structure */
static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&ArmSim_B.Gain1), 0, 0, 13 },

  { (char_T *)(&ArmSim_B.DataTypeConversion3), 2, 0, 2 },

  { (char_T *)(&ArmSim_B.sf_MotorBThrow.angle), 0, 0, 2 },

  { (char_T *)(&ArmSim_B.sf_MotorAThrow.angle), 0, 0, 2 },

  { (char_T *)(&ArmSim_B.sf_InitMotorB.angle), 0, 0, 2 },

  { (char_T *)(&ArmSim_B.sf_InitMotorA.angle), 0, 0, 2 }
  ,

  { (char_T *)(&ArmSim_DW.Integral_states), 0, 0, 5 },

  { (char_T *)(&ArmSim_DW.ToWorkspace1_PWORK.LoggedData), 11, 0, 8 },

  { (char_T *)(&ArmSim_DW.sf_MotorBThrow.count), 0, 0, 2 },

  { (char_T *)(&ArmSim_DW.sf_MotorAThrow.count), 0, 0, 2 },

  { (char_T *)(&ArmSim_DW.sf_InitMotorB.max_angle), 0, 0, 1 },

  { (char_T *)(&ArmSim_DW.sf_InitMotorA.max_angle), 0, 0, 1 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  12U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&ArmSim_P.Kd1), 0, 0, 70 },

  { (char_T *)(&ArmSim_P.ManualSwitch_CurrentSetting), 3, 0, 1 }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  2U,
  rtPTransitions
};

/* [EOF] ArmSim_dt.h */
