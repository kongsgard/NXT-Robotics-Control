/*
 * ballTossController_dt.h
 *
 * Code generation for model "ballTossController".
 *
 * Model version              : 1.11
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Wed Oct 18 22:04:03 2017
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
  { (char_T *)(&ballTossController_B.THROWSWITCH), 0, 0, 15 },

  { (char_T *)(&ballTossController_B.DataTypeConversion1), 6, 0, 2 },

  { (char_T *)(&ballTossController_B.sf_THROW1.ref_cur), 0, 0, 2 },

  { (char_T *)(&ballTossController_B.sf_THROW.ref_cur), 0, 0, 2 },

  { (char_T *)(&ballTossController_B.sf_INIT1.ref_cur), 0, 0, 1 },

  { (char_T *)(&ballTossController_B.sf_INIT.ref_cur), 0, 0, 1 }
  ,

  { (char_T *)(&ballTossController_DW.Internal_DSTATE), 0, 0, 6 },

  { (char_T *)(&ballTossController_DW.Scope_PWORK.LoggedData), 11, 0, 12 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  8U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&ballTossController_P.Kd1), 0, 0, 116 },

  { (char_T *)(&ballTossController_P.THROWSWITCH_CurrentSetting), 3, 0, 1 }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  2U,
  rtPTransitions
};

/* [EOF] ballTossController_dt.h */
