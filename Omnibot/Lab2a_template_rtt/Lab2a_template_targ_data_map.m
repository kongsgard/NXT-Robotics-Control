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
      section.nData     = 32;
      section.data(32)  = dumData; %prealloc
      
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
	  section.data(5).dtTransOffset = 104;
	
	  ;% Lab2a_template_P.traj_C
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 205;
	
	  ;% Lab2a_template_P.traj_dA
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 306;
	
	  ;% Lab2a_template_P.traj_dB
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 407;
	
	  ;% Lab2a_template_P.traj_dC
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 508;
	
	  ;% Lab2a_template_P.Gain_Gain
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 609;
	
	  ;% Lab2a_template_P.OffReset_Value
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 610;
	
	  ;% Lab2a_template_P.On_Value
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 611;
	
	  ;% Lab2a_template_P.Gain1_Gain
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 612;
	
	  ;% Lab2a_template_P.Gain2_Gain
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 613;
	
	  ;% Lab2a_template_P.Internal_A
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 614;
	
	  ;% Lab2a_template_P.Internal_C
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 615;
	
	  ;% Lab2a_template_P.Internal_D
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 616;
	
	  ;% Lab2a_template_P.Internal_X0
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 617;
	
	  ;% Lab2a_template_P.Saturation_UpperSat
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 618;
	
	  ;% Lab2a_template_P.Saturation_LowerSat
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 619;
	
	  ;% Lab2a_template_P.Internal_A_j
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 620;
	
	  ;% Lab2a_template_P.Internal_C_a
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 621;
	
	  ;% Lab2a_template_P.Internal_D_g
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 622;
	
	  ;% Lab2a_template_P.Internal_X0_l
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 623;
	
	  ;% Lab2a_template_P.Saturation1_UpperSat
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 624;
	
	  ;% Lab2a_template_P.Saturation1_LowerSat
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 625;
	
	  ;% Lab2a_template_P.Internal_A_l
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 626;
	
	  ;% Lab2a_template_P.Internal_C_i
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 627;
	
	  ;% Lab2a_template_P.Internal_D_f
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 628;
	
	  ;% Lab2a_template_P.Internal_X0_e
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 629;
	
	  ;% Lab2a_template_P.Saturation2_UpperSat
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 630;
	
	  ;% Lab2a_template_P.Saturation2_LowerSat
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 631;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% Lab2a_template_P.timeresetswitch_CurrentSetting
	  section.data(1).logicalSrcIdx = 32;
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
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
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
	
	  ;% Lab2a_template_B.Saturation
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_template_B.Saturation1
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_template_B.Saturation2
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.sf_trajgeneration2.ref_cur
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.sf_trajgeneration2.ref_dcur
	  section.data(2).logicalSrcIdx = 8;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.sf_trajgeneration1.ref_cur
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.sf_trajgeneration1.ref_dcur
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% Lab2a_template_B.sf_trajgeneration.ref_cur
	  section.data(1).logicalSrcIdx = 11;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_B.sf_trajgeneration.ref_dcur
	  section.data(2).logicalSrcIdx = 12;
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
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% Lab2a_template_DW.Internal_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_DW.Internal_DSTATE_k
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_template_DW.Internal_DSTATE_j
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_template_DW.t_off
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_template_DW.last_rst
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 13;
      section.data(13)  = dumData; %prealloc
      
	  ;% Lab2a_template_DW.Scope_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% Lab2a_template_DW.ToWorkspace_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% Lab2a_template_DW.ToWorkspace1_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 2;
	
	  ;% Lab2a_template_DW.ToWorkspace3_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 3;
	
	  ;% Lab2a_template_DW.ToWorkspace4_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 9;
	  section.data(5).dtTransOffset = 4;
	
	  ;% Lab2a_template_DW.ToWorkspace6_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 10;
	  section.data(6).dtTransOffset = 5;
	
	  ;% Lab2a_template_DW.ToWorkspace7_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 11;
	  section.data(7).dtTransOffset = 6;
	
	  ;% Lab2a_template_DW.ToWorkspace9_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 12;
	  section.data(8).dtTransOffset = 7;
	
	  ;% Lab2a_template_DW.ToWorkspace2_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 13;
	  section.data(9).dtTransOffset = 8;
	
	  ;% Lab2a_template_DW.ToWorkspace10_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 14;
	  section.data(10).dtTransOffset = 9;
	
	  ;% Lab2a_template_DW.ToWorkspace5_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 15;
	  section.data(11).dtTransOffset = 10;
	
	  ;% Lab2a_template_DW.ToWorkspace11_PWORK.LoggedData
	  section.data(12).logicalSrcIdx = 16;
	  section.data(12).dtTransOffset = 11;
	
	  ;% Lab2a_template_DW.ToWorkspace8_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 17;
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


  targMap.checksum0 = 2807507462;
  targMap.checksum1 = 3111162048;
  targMap.checksum2 = 1312912385;
  targMap.checksum3 = 2589739818;

