  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (Lab2a_template_P)
    ;%
      section.nData     = 38;
      section.data(38)  = dumData; %prealloc
      
	  ;% Lab2a_template_P.Kd
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_P.Kp
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_template_P.Ts_traj
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_template_P.traj_A
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_template_P.traj_B
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 70;
	
	  ;% Lab2a_template_P.traj_C
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 137;
	
	  ;% Lab2a_template_P.traj_dA
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 204;
	
	  ;% Lab2a_template_P.traj_dB
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 271;
	
	  ;% Lab2a_template_P.traj_dC
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 338;
	
	  ;% Lab2a_template_P.Gain_Gain
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 405;
	
	  ;% Lab2a_template_P.OffReset_Value
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 406;
	
	  ;% Lab2a_template_P.On_Value
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 407;
	
	  ;% Lab2a_template_P.Gain1_Gain
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 408;
	
	  ;% Lab2a_template_P.Gain2_Gain
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 409;
	
	  ;% Lab2a_template_P.DiscreteTimeIntegrator_gainval
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 410;
	
	  ;% Lab2a_template_P.DiscreteTimeIntegrator_IC
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 411;
	
	  ;% Lab2a_template_P.Internal_A
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 412;
	
	  ;% Lab2a_template_P.Internal_C
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 413;
	
	  ;% Lab2a_template_P.Internal_D
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 414;
	
	  ;% Lab2a_template_P.Internal_X0
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 415;
	
	  ;% Lab2a_template_P.Saturation_UpperSat
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 416;
	
	  ;% Lab2a_template_P.Saturation_LowerSat
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 417;
	
	  ;% Lab2a_template_P.DiscreteTimeIntegrator_gainva_l
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 418;
	
	  ;% Lab2a_template_P.DiscreteTimeIntegrator_IC_i
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 419;
	
	  ;% Lab2a_template_P.Internal_A_j
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 420;
	
	  ;% Lab2a_template_P.Internal_C_a
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 421;
	
	  ;% Lab2a_template_P.Internal_D_g
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 422;
	
	  ;% Lab2a_template_P.Internal_X0_l
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 423;
	
	  ;% Lab2a_template_P.Saturation1_UpperSat
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 424;
	
	  ;% Lab2a_template_P.Saturation1_LowerSat
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 425;
	
	  ;% Lab2a_template_P.DiscreteTimeIntegrator_gainva_j
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 426;
	
	  ;% Lab2a_template_P.DiscreteTimeIntegrator_IC_ig
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 427;
	
	  ;% Lab2a_template_P.Internal_A_l
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 428;
	
	  ;% Lab2a_template_P.Internal_C_i
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 429;
	
	  ;% Lab2a_template_P.Internal_D_f
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 430;
	
	  ;% Lab2a_template_P.Internal_X0_e
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 431;
	
	  ;% Lab2a_template_P.Saturation2_UpperSat
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 432;
	
	  ;% Lab2a_template_P.Saturation2_LowerSat
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 433;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% Lab2a_template_P.timeresetswitch_CurrentSetting
	  section.data(1).logicalSrcIdx = 38;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 4;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (Lab2a_template_B)
    ;%
      section.nData     = 10;
      section.data(10)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.Gain
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.timeresetswitch
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_template_B.Gain1
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_template_B.Gain2
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_template_B.Sum3
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_template_B.Saturation
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_template_B.Sum3_e
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% Lab2a_template_B.Saturation1
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% Lab2a_template_B.Sum3_j
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% Lab2a_template_B.Saturation2
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.sf_trajgeneration2.ref_cur
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.sf_trajgeneration2.ref_dcur
	  section.data(2).logicalSrcIdx = 11;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.sf_trajgeneration1.ref_cur
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.sf_trajgeneration1.ref_dcur
	  section.data(2).logicalSrcIdx = 13;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.sf_trajgeneration.ref_cur
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.sf_trajgeneration.ref_dcur
	  section.data(2).logicalSrcIdx = 15;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 2;
    sectIdxOffset = 4;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (Lab2a_template_DW)
    ;%
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% Lab2a_template_DW.DiscreteTimeIntegrator_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_DW.Internal_DSTATE
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_template_DW.DiscreteTimeIntegrator_DSTATE_e
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_template_DW.Internal_DSTATE_k
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_template_DW.DiscreteTimeIntegrator_DSTATE_l
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_template_DW.Internal_DSTATE_j
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_template_DW.t_off
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% Lab2a_template_DW.last_rst
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 13;
      section.data(13)  = dumData; %prealloc
      
	  ;% Lab2a_template_DW.Scope_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_DW.ToWorkspace_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 9;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_template_DW.ToWorkspace1_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 10;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_template_DW.ToWorkspace3_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 11;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_template_DW.ToWorkspace4_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 12;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_template_DW.ToWorkspace6_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 13;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_template_DW.ToWorkspace7_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 14;
	  section.data(7).dtTransOffset = 6;
	
	  ;% Lab2a_template_DW.ToWorkspace9_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 15;
	  section.data(8).dtTransOffset = 7;
	
	  ;% Lab2a_template_DW.ToWorkspace2_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 16;
	  section.data(9).dtTransOffset = 8;
	
	  ;% Lab2a_template_DW.ToWorkspace10_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 17;
	  section.data(10).dtTransOffset = 9;
	
	  ;% Lab2a_template_DW.ToWorkspace5_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 18;
	  section.data(11).dtTransOffset = 10;
	
	  ;% Lab2a_template_DW.ToWorkspace11_PWORK.LoggedData
	  section.data(12).logicalSrcIdx = 19;
	  section.data(12).dtTransOffset = 11;
	
	  ;% Lab2a_template_DW.ToWorkspace8_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 20;
	  section.data(13).dtTransOffset = 12;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 3670305594;
  targMap.checksum1 = 3316906591;
  targMap.checksum2 = 1802809479;
  targMap.checksum3 = 4279287280;

