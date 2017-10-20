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
    ;% Auto data (ballTossController_P)
    ;%
      section.nData     = 44;
      section.data(44)  = dumData; %prealloc
      
	  ;% ballTossController_P.Kd1
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_P.Kd2
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ballTossController_P.Kp1
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ballTossController_P.Kp2
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ballTossController_P.dtheta1_throw_traj
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ballTossController_P.dtheta2_throw_traj
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 14;
	
	  ;% ballTossController_P.t_ref_init
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 24;
	
	  ;% ballTossController_P.t_ref_throw
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 34;
	
	  ;% ballTossController_P.theta1_init_traj
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 44;
	
	  ;% ballTossController_P.theta1_throw_traj
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 54;
	
	  ;% ballTossController_P.theta2_init_traj
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 64;
	
	  ;% ballTossController_P.theta2_throw_traj
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 74;
	
	  ;% ballTossController_P.Initon_Value
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 84;
	
	  ;% ballTossController_P.Throwon_Value
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 85;
	
	  ;% ballTossController_P.Switch_Threshold
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 86;
	
	  ;% ballTossController_P.Gain1_Gain
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 87;
	
	  ;% ballTossController_P.Internal_A
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 88;
	
	  ;% ballTossController_P.Internal_B
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 89;
	
	  ;% ballTossController_P.Internal_C
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 90;
	
	  ;% ballTossController_P.Internal_D
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 91;
	
	  ;% ballTossController_P.Internal_X0
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 92;
	
	  ;% ballTossController_P.Saturation_UpperSat
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 93;
	
	  ;% ballTossController_P.Saturation_LowerSat
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 94;
	
	  ;% ballTossController_P.Switch2_Threshold
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 95;
	
	  ;% ballTossController_P.Gain1_Gain_o
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 96;
	
	  ;% ballTossController_P.Internal_A_g
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 97;
	
	  ;% ballTossController_P.Internal_B_p
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 98;
	
	  ;% ballTossController_P.Internal_C_m
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 99;
	
	  ;% ballTossController_P.Internal_D_p
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 100;
	
	  ;% ballTossController_P.Internal_X0_k
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 101;
	
	  ;% ballTossController_P.Saturation_UpperSat_i
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 102;
	
	  ;% ballTossController_P.Saturation_LowerSat_f
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 103;
	
	  ;% ballTossController_P.Internal_A_gu
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 104;
	
	  ;% ballTossController_P.Internal_B_i
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 105;
	
	  ;% ballTossController_P.Internal_C_b
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 106;
	
	  ;% ballTossController_P.Internal_D_n
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 107;
	
	  ;% ballTossController_P.Internal_X0_l
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 108;
	
	  ;% ballTossController_P.Switch1_Threshold
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 109;
	
	  ;% ballTossController_P.Internal_A_f
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 110;
	
	  ;% ballTossController_P.Internal_B_p2
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 111;
	
	  ;% ballTossController_P.Internal_C_j
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 112;
	
	  ;% ballTossController_P.Internal_D_e
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 113;
	
	  ;% ballTossController_P.Internal_X0_m
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 114;
	
	  ;% ballTossController_P.Switch3_Threshold
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 115;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ballTossController_P.THROWSWITCH_CurrentSetting
	  section.data(1).logicalSrcIdx = 44;
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
    nTotSects     = 6;
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
    ;% Auto data (ballTossController_B)
    ;%
      section.nData     = 15;
      section.data(15)  = dumData; %prealloc
      
	  ;% ballTossController_B.THROWSWITCH
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_B.Switch
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ballTossController_B.Gain1
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ballTossController_B.Sum
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ballTossController_B.Gain1_i
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ballTossController_B.Sum1
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% ballTossController_B.Switch2
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% ballTossController_B.Gain1_c
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% ballTossController_B.Sum_g
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% ballTossController_B.Gain1_a
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% ballTossController_B.Sum1_o
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% ballTossController_B.Internal
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% ballTossController_B.Switch1
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% ballTossController_B.Internal_i
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% ballTossController_B.Switch3
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ballTossController_B.DataTypeConversion1
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_B.DataTypeConversion1_j
	  section.data(2).logicalSrcIdx = 16;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ballTossController_B.sf_THROW1.ref_cur
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_B.sf_THROW1.dref_cur
	  section.data(2).logicalSrcIdx = 18;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ballTossController_B.sf_THROW.ref_cur
	  section.data(1).logicalSrcIdx = 19;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_B.sf_THROW.dref_cur
	  section.data(2).logicalSrcIdx = 20;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ballTossController_B.sf_INIT1.ref_cur
	  section.data(1).logicalSrcIdx = 21;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ballTossController_B.sf_INIT.ref_cur
	  section.data(1).logicalSrcIdx = 22;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(6) = section;
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
    sectIdxOffset = 6;
    
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
    ;% Auto data (ballTossController_DW)
    ;%
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% ballTossController_DW.Internal_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_DW.Internal_DSTATE_j
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ballTossController_DW.Internal_DSTATE_p
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ballTossController_DW.Internal_DSTATE_l
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ballTossController_DW.t_off
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ballTossController_DW.last_rst
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 12;
      section.data(12)  = dumData; %prealloc
      
	  ;% ballTossController_DW.Scope_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 6;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ballTossController_DW.Scope1_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 7;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ballTossController_DW.ToWorkspace_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 8;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ballTossController_DW.ToWorkspace1_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 9;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ballTossController_DW.Scope_PWORK_a.LoggedData
	  section.data(5).logicalSrcIdx = 10;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ballTossController_DW.Scope1_PWORK_b.LoggedData
	  section.data(6).logicalSrcIdx = 11;
	  section.data(6).dtTransOffset = 5;
	
	  ;% ballTossController_DW.ToWorkspace_PWORK_h.LoggedData
	  section.data(7).logicalSrcIdx = 12;
	  section.data(7).dtTransOffset = 6;
	
	  ;% ballTossController_DW.ToWorkspace1_PWORK_j.LoggedData
	  section.data(8).logicalSrcIdx = 13;
	  section.data(8).dtTransOffset = 7;
	
	  ;% ballTossController_DW.ToWorkspace_PWORK_d.LoggedData
	  section.data(9).logicalSrcIdx = 14;
	  section.data(9).dtTransOffset = 8;
	
	  ;% ballTossController_DW.ToWorkspace1_PWORK_b.LoggedData
	  section.data(10).logicalSrcIdx = 15;
	  section.data(10).dtTransOffset = 9;
	
	  ;% ballTossController_DW.ToWorkspace2_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 16;
	  section.data(11).dtTransOffset = 10;
	
	  ;% ballTossController_DW.ToWorkspace3_PWORK.LoggedData
	  section.data(12).logicalSrcIdx = 17;
	  section.data(12).dtTransOffset = 11;
	
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


  targMap.checksum0 = 1999202187;
  targMap.checksum1 = 3061675984;
  targMap.checksum2 = 670259190;
  targMap.checksum3 = 509471430;

