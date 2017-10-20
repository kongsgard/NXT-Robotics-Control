/* Include files */

#include "ballTossController_sfun.h"
#include "ballTossController_sfun_debug_macros.h"
#include "c1_ballTossController.h"
#include "c3_ballTossController.h"
#include "c4_ballTossController.h"
#include "c5_ballTossController.h"
#include "c6_ballTossController.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
uint32_T _ballTossControllerMachineNumber_;

/* Function Declarations */

/* Function Definitions */
void ballTossController_initializer(void)
{
}

void ballTossController_terminator(void)
{
}

/* SFunction Glue Code */
unsigned int sf_ballTossController_method_dispatcher(SimStruct *simstructPtr,
  unsigned int chartFileNumber, const char* specsCksum, int_T method, void *data)
{
  if (chartFileNumber==1) {
    c1_ballTossController_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==3) {
    c3_ballTossController_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==4) {
    c4_ballTossController_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==5) {
    c5_ballTossController_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==6) {
    c6_ballTossController_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  return 0;
}

unsigned int sf_ballTossController_process_testpoint_info_call( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[32];
  char machineName[128];
  if (nrhs < 3 || !mxIsChar(prhs[0]) || !mxIsChar(prhs[1]))
    return 0;

  /* Possible call to get testpoint info. */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_testpoint_info"))
    return 0;
  mxGetString(prhs[1], machineName, sizeof(machineName)/sizeof(char));
  machineName[(sizeof(machineName)/sizeof(char)-1)] = '\0';
  if (!strcmp(machineName, "ballTossController")) {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[2]);
    switch (chartFileNumber) {
     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }

    return 1;
  }

  return 0;

#else

  return 0;

#endif

}

unsigned int sf_ballTossController_process_check_sum_call( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[20];
  if (nrhs<1 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the checksum */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"sf_get_check_sum"))
    return 0;
  plhs[0] = mxCreateDoubleMatrix( 1,4,mxREAL);
  if (nrhs>1 && mxIsChar(prhs[1])) {
    mxGetString(prhs[1], commandName,sizeof(commandName)/sizeof(char));
    commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
    if (!strcmp(commandName,"machine")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3188362576U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(175532496U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2719745082U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1133815738U);
    } else if (!strcmp(commandName,"exportedFcn")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0U);
    } else if (!strcmp(commandName,"makefile")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(2421830922U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1966445476U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(960021798U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1804098495U);
    } else if (nrhs==3 && !strcmp(commandName,"chart")) {
      unsigned int chartFileNumber;
      chartFileNumber = (unsigned int)mxGetScalar(prhs[2]);
      switch (chartFileNumber) {
       case 1:
        {
          extern void sf_c1_ballTossController_get_check_sum(mxArray *plhs[]);
          sf_c1_ballTossController_get_check_sum(plhs);
          break;
        }

       case 3:
        {
          extern void sf_c3_ballTossController_get_check_sum(mxArray *plhs[]);
          sf_c3_ballTossController_get_check_sum(plhs);
          break;
        }

       case 4:
        {
          extern void sf_c4_ballTossController_get_check_sum(mxArray *plhs[]);
          sf_c4_ballTossController_get_check_sum(plhs);
          break;
        }

       case 5:
        {
          extern void sf_c5_ballTossController_get_check_sum(mxArray *plhs[]);
          sf_c5_ballTossController_get_check_sum(plhs);
          break;
        }

       case 6:
        {
          extern void sf_c6_ballTossController_get_check_sum(mxArray *plhs[]);
          sf_c6_ballTossController_get_check_sum(plhs);
          break;
        }

       default:
        ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0.0);
      }
    } else if (!strcmp(commandName,"target")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3084158392U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(2524169757U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2812955680U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(245732821U);
    } else {
      return 0;
    }
  } else {
    ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(868110656U);
    ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(4280467625U);
    ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2693047567U);
    ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(3929368093U);
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_ballTossController_autoinheritance_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[32];
  char aiChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the autoinheritance_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_autoinheritance_info"))
    return 0;
  mxGetString(prhs[2], aiChksum,sizeof(aiChksum)/sizeof(char));
  aiChksum[(sizeof(aiChksum)/sizeof(char)-1)] = '\0';

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(aiChksum, "gHNHmycSREtu6ZvD2k2yn") == 0) {
          extern mxArray *sf_c1_ballTossController_get_autoinheritance_info(void);
          plhs[0] = sf_c1_ballTossController_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 3:
      {
        if (strcmp(aiChksum, "rNxkHuQWHdjJ2FKEPEMdyB") == 0) {
          extern mxArray *sf_c3_ballTossController_get_autoinheritance_info(void);
          plhs[0] = sf_c3_ballTossController_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 4:
      {
        if (strcmp(aiChksum, "gHNHmycSREtu6ZvD2k2yn") == 0) {
          extern mxArray *sf_c4_ballTossController_get_autoinheritance_info(void);
          plhs[0] = sf_c4_ballTossController_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 5:
      {
        if (strcmp(aiChksum, "nKFEoOuMbEGavq3tySPkqB") == 0) {
          extern mxArray *sf_c5_ballTossController_get_autoinheritance_info(void);
          plhs[0] = sf_c5_ballTossController_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 6:
      {
        if (strcmp(aiChksum, "rNxkHuQWHdjJ2FKEPEMdyB") == 0) {
          extern mxArray *sf_c6_ballTossController_get_autoinheritance_info(void);
          plhs[0] = sf_c6_ballTossController_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_ballTossController_get_eml_resolved_functions_info( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[64];
  if (nrhs<2 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the get_eml_resolved_functions_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_eml_resolved_functions_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        extern const mxArray
          *sf_c1_ballTossController_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c1_ballTossController_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 3:
      {
        extern const mxArray
          *sf_c3_ballTossController_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c3_ballTossController_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 4:
      {
        extern const mxArray
          *sf_c4_ballTossController_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c4_ballTossController_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 5:
      {
        extern const mxArray
          *sf_c5_ballTossController_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c5_ballTossController_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 6:
      {
        extern const mxArray
          *sf_c6_ballTossController_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c6_ballTossController_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_ballTossController_third_party_uses_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{
  char commandName[64];
  char tpChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the third_party_uses_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  mxGetString(prhs[2], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_third_party_uses_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(tpChksum, "EBRemkVRpAl6dtZp68UA3E") == 0) {
          extern mxArray *sf_c1_ballTossController_third_party_uses_info(void);
          plhs[0] = sf_c1_ballTossController_third_party_uses_info();
          break;
        }
      }

     case 3:
      {
        if (strcmp(tpChksum, "mps77gaLLacodZnszQK4r") == 0) {
          extern mxArray *sf_c3_ballTossController_third_party_uses_info(void);
          plhs[0] = sf_c3_ballTossController_third_party_uses_info();
          break;
        }
      }

     case 4:
      {
        if (strcmp(tpChksum, "EBRemkVRpAl6dtZp68UA3E") == 0) {
          extern mxArray *sf_c4_ballTossController_third_party_uses_info(void);
          plhs[0] = sf_c4_ballTossController_third_party_uses_info();
          break;
        }
      }

     case 5:
      {
        if (strcmp(tpChksum, "CnxFOOz9AaFYobjmHkEeuE") == 0) {
          extern mxArray *sf_c5_ballTossController_third_party_uses_info(void);
          plhs[0] = sf_c5_ballTossController_third_party_uses_info();
          break;
        }
      }

     case 6:
      {
        if (strcmp(tpChksum, "mps77gaLLacodZnszQK4r") == 0) {
          extern mxArray *sf_c6_ballTossController_third_party_uses_info(void);
          plhs[0] = sf_c6_ballTossController_third_party_uses_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

unsigned int sf_ballTossController_updateBuildInfo_args_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{
  char commandName[64];
  char tpChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the updateBuildInfo_args_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  mxGetString(prhs[2], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_updateBuildInfo_args_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(tpChksum, "EBRemkVRpAl6dtZp68UA3E") == 0) {
          extern mxArray *sf_c1_ballTossController_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c1_ballTossController_updateBuildInfo_args_info();
          break;
        }
      }

     case 3:
      {
        if (strcmp(tpChksum, "mps77gaLLacodZnszQK4r") == 0) {
          extern mxArray *sf_c3_ballTossController_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c3_ballTossController_updateBuildInfo_args_info();
          break;
        }
      }

     case 4:
      {
        if (strcmp(tpChksum, "EBRemkVRpAl6dtZp68UA3E") == 0) {
          extern mxArray *sf_c4_ballTossController_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c4_ballTossController_updateBuildInfo_args_info();
          break;
        }
      }

     case 5:
      {
        if (strcmp(tpChksum, "CnxFOOz9AaFYobjmHkEeuE") == 0) {
          extern mxArray *sf_c5_ballTossController_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c5_ballTossController_updateBuildInfo_args_info();
          break;
        }
      }

     case 6:
      {
        if (strcmp(tpChksum, "mps77gaLLacodZnszQK4r") == 0) {
          extern mxArray *sf_c6_ballTossController_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c6_ballTossController_updateBuildInfo_args_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

void ballTossController_debug_initialize(struct SfDebugInstanceStruct*
  debugInstance)
{
  _ballTossControllerMachineNumber_ = sf_debug_initialize_machine(debugInstance,
    "ballTossController","sfun",0,5,0,0,0);
  sf_debug_set_machine_event_thresholds(debugInstance,
    _ballTossControllerMachineNumber_,0,0);
  sf_debug_set_machine_data_thresholds(debugInstance,
    _ballTossControllerMachineNumber_,0);
}

void ballTossController_register_exported_symbols(SimStruct* S)
{
}

static mxArray* sRtwOptimizationInfoStruct= NULL;
mxArray* load_ballTossController_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct==NULL) {
    sRtwOptimizationInfoStruct = sf_load_rtw_optimization_info(
      "ballTossController", "ballTossController");
    mexMakeArrayPersistent(sRtwOptimizationInfoStruct);
  }

  return(sRtwOptimizationInfoStruct);
}

void unload_ballTossController_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct!=NULL) {
    mxDestroyArray(sRtwOptimizationInfoStruct);
    sRtwOptimizationInfoStruct = NULL;
  }
}
