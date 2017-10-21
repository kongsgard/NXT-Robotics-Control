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
    ;% Auto data (ArmSim_P)
    ;%
      section.nData     = 33;
      section.data(33)  = dumData; %prealloc
      
	  ;% ArmSim_P.Kd1
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_P.Kd2
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ArmSim_P.Kp2
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ArmSim_P.dtheta1_throw_traj
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ArmSim_P.dtheta2_throw_traj
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 13;
	
	  ;% ArmSim_P.theta1_throw_traj
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 23;
	
	  ;% ArmSim_P.theta2_throw_traj
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 33;
	
	  ;% ArmSim_P.Gain1_Gain
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 43;
	
	  ;% ArmSim_P.Gain1_Gain_m
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 44;
	
	  ;% ArmSim_P.S0_Value
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 45;
	
	  ;% ArmSim_P.S1_Value
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 46;
	
	  ;% ArmSim_P.Switch_Threshold
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 47;
	
	  ;% ArmSim_P.Switch1_Threshold
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 48;
	
	  ;% ArmSim_P.Switch2_Threshold
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 49;
	
	  ;% ArmSim_P.Switch3_Threshold
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 50;
	
	  ;% ArmSim_P.Integral_NumCoef
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 51;
	
	  ;% ArmSim_P.Integral_DenCoef
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 52;
	
	  ;% ArmSim_P.Integral_InitialStates
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 54;
	
	  ;% ArmSim_P.Internal_A
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 55;
	
	  ;% ArmSim_P.Internal_B
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 56;
	
	  ;% ArmSim_P.Internal_C
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 57;
	
	  ;% ArmSim_P.Internal_D
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 58;
	
	  ;% ArmSim_P.Internal_X0
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 59;
	
	  ;% ArmSim_P.Saturation1_UpperSat
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 60;
	
	  ;% ArmSim_P.Saturation1_LowerSat
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 61;
	
	  ;% ArmSim_P.Ki_Gain
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 62;
	
	  ;% ArmSim_P.Internal_A_k
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 63;
	
	  ;% ArmSim_P.Internal_B_h
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 64;
	
	  ;% ArmSim_P.Internal_C_m
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 65;
	
	  ;% ArmSim_P.Internal_D_m
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 66;
	
	  ;% ArmSim_P.Internal_X0_h
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 67;
	
	  ;% ArmSim_P.Saturation1_UpperSat_f
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 68;
	
	  ;% ArmSim_P.Saturation1_LowerSat_h
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 69;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ArmSim_P.ManualSwitch_CurrentSetting
	  section.data(1).logicalSrcIdx = 33;
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
    ;% Auto data (ArmSim_B)
    ;%
      section.nData     = 13;
      section.data(13)  = dumData; %prealloc
      
	  ;% ArmSim_B.Gain1
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_B.Gain1_c
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ArmSim_B.ManualSwitch
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ArmSim_B.Switch
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ArmSim_B.Switch1
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ArmSim_B.Switch2
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% ArmSim_B.Switch3
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% ArmSim_B.Integral
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% ArmSim_B.Internal
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% ArmSim_B.Kd
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% ArmSim_B.Ki
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% ArmSim_B.Internal_k
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% ArmSim_B.Kd_l
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_B.DataTypeConversion3
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_B.DataTypeConversion3_i
	  section.data(2).logicalSrcIdx = 14;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_B.sf_MotorBThrow.angle
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_B.sf_MotorBThrow.velocity
	  section.data(2).logicalSrcIdx = 16;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_B.sf_MotorAThrow.angle
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_B.sf_MotorAThrow.velocity
	  section.data(2).logicalSrcIdx = 18;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_B.sf_InitMotorB.angle
	  section.data(1).logicalSrcIdx = 19;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_B.sf_InitMotorB.velocity
	  section.data(2).logicalSrcIdx = 20;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_B.sf_InitMotorA.angle
	  section.data(1).logicalSrcIdx = 21;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_B.sf_InitMotorA.velocity
	  section.data(2).logicalSrcIdx = 22;
	  section.data(2).dtTransOffset = 1;
	
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
    nTotSects     = 6;
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
    ;% Auto data (ArmSim_DW)
    ;%
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% ArmSim_DW.Integral_states
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_DW.Internal_DSTATE
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ArmSim_DW.Internal_DSTATE_l
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ArmSim_DW.t_off
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ArmSim_DW.last_rst
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% ArmSim_DW.ToWorkspace1_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_DW.ToWorkspace2_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ArmSim_DW.ToWorkspace3_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ArmSim_DW.ToWorkspace4_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ArmSim_DW.ToWorkspace5_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 9;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ArmSim_DW.ToWorkspace6_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 10;
	  section.data(6).dtTransOffset = 5;
	
	  ;% ArmSim_DW.ToWorkspace5_PWORK_j.LoggedData
	  section.data(7).logicalSrcIdx = 11;
	  section.data(7).dtTransOffset = 6;
	
	  ;% ArmSim_DW.ToWorkspace5_PWORK_b.LoggedData
	  section.data(8).logicalSrcIdx = 12;
	  section.data(8).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_DW.sf_MotorBThrow.count
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_DW.sf_MotorBThrow.t_curr
	  section.data(2).logicalSrcIdx = 14;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% ArmSim_DW.sf_MotorAThrow.count
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ArmSim_DW.sf_MotorAThrow.t_curr
	  section.data(2).logicalSrcIdx = 16;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ArmSim_DW.sf_InitMotorB.max_angle
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ArmSim_DW.sf_InitMotorA.max_angle
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
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


  targMap.checksum0 = 4013912185;
  targMap.checksum1 = 3723402334;
  targMap.checksum2 = 494361086;
  targMap.checksum3 = 303373797;

