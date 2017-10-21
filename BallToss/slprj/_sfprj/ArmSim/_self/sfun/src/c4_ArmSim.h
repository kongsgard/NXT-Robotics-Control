#ifndef __c4_ArmSim_h__
#define __c4_ArmSim_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc4_ArmSimInstanceStruct
#define typedef_SFc4_ArmSimInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c4_sfEvent;
  boolean_T c4_isStable;
  boolean_T c4_doneDoubleBufferReInit;
  uint8_T c4_is_active_c4_ArmSim;
  real_T c4_count;
  boolean_T c4_count_not_empty;
  real_T c4_t_curr;
  boolean_T c4_t_curr_not_empty;
} SFc4_ArmSimInstanceStruct;

#endif                                 /*typedef_SFc4_ArmSimInstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c4_ArmSim_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c4_ArmSim_get_check_sum(mxArray *plhs[]);
extern void c4_ArmSim_method_dispatcher(SimStruct *S, int_T method, void *data);

#endif
