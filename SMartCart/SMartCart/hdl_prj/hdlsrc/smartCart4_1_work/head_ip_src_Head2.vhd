-- -------------------------------------------------------------
-- 
-- File Name: D:\Matlab_Vhd\smartCart\OTLADKA\hdlsrc\smartCart4_1_work\head_ip_src_Head2.vhd
-- Created: 2016-07-21 09:50:03
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_Head2
-- Source Path: smartCart4_1_work/head/Interface/Head2
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_Head2 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        ADR_IN                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        DataIN                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        START                             :   IN    std_logic;
        STOP                              :   IN    std_logic;
        AdrOut                            :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        DataOut                           :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END head_ip_src_Head2;


ARCHITECTURE rtl OF head_ip_src_Head2 IS

  -- Signals
  SIGNAL ADR_IN_unsigned                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant5_out1        : std_logic;
  SIGNAL Constant12_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL DataIN_unsigned                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch10_out1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant8_out1        : std_logic;
  SIGNAL Constant5_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant3_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch1_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant6_out1        : std_logic;
  SIGNAL Constant11_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch11_out1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant4_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch2_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay_out1                       : std_logic;
  SIGNAL Logical_Operator8_out1           : std_logic;
  SIGNAL Logical_Operator10_out1          : std_logic;
  SIGNAL Logical_Operator9_out1           : std_logic;
  SIGNAL Logical_Operator11_out1          : std_logic;
  SIGNAL Logical_Operator5_out1           : std_logic;
  SIGNAL SA2_out1                         : std_logic;
  SIGNAL Constant8_out1                   : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL Constant8_out1_dtc               : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant7_out1                   : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL Constant7_out1_dtc               : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay1_out1                      : std_logic;
  SIGNAL Switch4_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Data_Type_Conversion_out1        : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL Logical_Operator13_out1          : std_logic;
  SIGNAL START_dtc                        : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant9_out1                   : std_logic;
  SIGNAL Constant9_out1_dtc               : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch5_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL SA1_out1                         : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL SA1_out1_is_not0                 : std_logic;
  SIGNAL Logical_Operator6_out1           : std_logic;
  SIGNAL Compare_To_Constant7_out1        : std_logic;
  SIGNAL Compare_To_Zero_out1             : std_logic;
  SIGNAL Constant10_out1                  : std_logic;
  SIGNAL SA1_out1_is_not0_1               : std_logic;
  SIGNAL Logical_Operator4_out1           : std_logic;
  SIGNAL HDL_Counter_out1                 : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL Compare_To_Constant2_out1        : std_logic;
  SIGNAL Logical_Operator3_out1           : std_logic;
  SIGNAL Compare_To_Constant1_out1        : std_logic;
  SIGNAL Logical_Operator1_out1           : std_logic;
  SIGNAL Logical_Operator2_out1           : std_logic;
  SIGNAL Logical_Operator_out1            : std_logic;
  SIGNAL Logical_Operator7_out1           : std_logic;
  SIGNAL Logical_Operator12_out1          : std_logic;
  SIGNAL HDL_Counter_out1_dtc             : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant6_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch3_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Add_add_temp                     : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Add_out1                         : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Constant13_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant15_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant17_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant19_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant21_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant28_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant27_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant26_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant1_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Index_Vector_DATA_out1           : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant14_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant16_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant18_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant20_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant22_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant23_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant24_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant25_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant2_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Index_Vector_DATA1_out1          : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  ADR_IN_unsigned <= unsigned(ADR_IN);

  
  Compare_To_Constant5_out1 <= '1' WHEN ADR_IN_unsigned = to_unsigned(16#01#, 8) ELSE
      '0';

  Constant12_out1 <= to_unsigned(16#00#, 8);

  DataIN_unsigned <= unsigned(DataIN);

  
  Switch10_out1 <= Constant12_out1 WHEN Compare_To_Constant5_out1 = '0' ELSE
      DataIN_unsigned;

  
  Compare_To_Constant8_out1 <= '1' WHEN Switch10_out1 = to_unsigned(16#01#, 8) ELSE
      '0';

  Constant5_out1 <= to_unsigned(16#00#, 8);

  Constant3_out1 <= to_unsigned(16#00#, 8);

  
  Switch1_out1 <= Constant5_out1 WHEN Compare_To_Constant8_out1 = '0' ELSE
      Constant3_out1;

  
  Compare_To_Constant6_out1 <= '1' WHEN ADR_IN_unsigned = to_unsigned(16#02#, 8) ELSE
      '0';

  Constant11_out1 <= to_unsigned(16#00#, 8);

  
  Switch11_out1 <= Constant11_out1 WHEN Compare_To_Constant6_out1 = '0' ELSE
      DataIN_unsigned;

  Constant4_out1 <= to_unsigned(16#00#, 8);

  
  Switch2_out1 <= Constant5_out1 WHEN Switch11_out1 = to_unsigned(16#00#, 8) ELSE
      Constant4_out1;

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay_out1 <= STOP;
      END IF;
    END IF;
  END PROCESS Delay_process;


  Logical_Operator8_out1 <= Delay_out1 XOR STOP;

  Logical_Operator10_out1 <=  NOT STOP;

  Logical_Operator9_out1 <= Logical_Operator8_out1 AND Logical_Operator10_out1;

  Logical_Operator11_out1 <= Logical_Operator8_out1 AND STOP;

  Logical_Operator5_out1 <= Logical_Operator9_out1 OR Logical_Operator11_out1;

  SA2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA2_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator5_out1 = '1' THEN
        SA2_out1 <= STOP;
      END IF;
    END IF;
  END PROCESS SA2_process;


  Constant8_out1 <= to_unsigned(16#0#, 4);

  Constant8_out1_dtc <= resize(Constant8_out1, 8);

  Constant7_out1 <= to_unsigned(16#5#, 4);

  Constant7_out1_dtc <= resize(Constant7_out1, 8);

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay1_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay1_out1 <= Logical_Operator5_out1;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  
  Switch4_out1 <= Constant8_out1_dtc WHEN SA2_out1 = '0' ELSE
      Constant7_out1_dtc;

  Data_Type_Conversion_out1 <= Switch4_out1(3 DOWNTO 0);

  Logical_Operator13_out1 <= Logical_Operator9_out1 OR START;

  START_dtc <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & START;

  Constant9_out1 <= '0';

  Constant9_out1_dtc <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & Constant9_out1;

  
  Switch5_out1 <= START_dtc WHEN Logical_Operator9_out1 = '0' ELSE
      Constant9_out1_dtc;

  SA1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA1_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator13_out1 = '1' THEN
        SA1_out1 <= Switch5_out1;
      END IF;
    END IF;
  END PROCESS SA1_process;


  
  SA1_out1_is_not0 <= '1' WHEN SA1_out1 /= to_unsigned(16#00#, 8) ELSE
      '0';

  Logical_Operator6_out1 <= SA2_out1 AND SA1_out1_is_not0;

  
  Compare_To_Constant7_out1 <= '1' WHEN Switch10_out1 = to_unsigned(16#03#, 8) ELSE
      '0';

  
  Compare_To_Zero_out1 <= '1' WHEN Logical_Operator6_out1 = '0' ELSE
      '0';

  Constant10_out1 <= '1';

  
  SA1_out1_is_not0_1 <= '1' WHEN SA1_out1 /= to_unsigned(16#00#, 8) ELSE
      '0';

  Logical_Operator4_out1 <= Compare_To_Zero_out1 AND SA1_out1_is_not0_1;

  
  Compare_To_Constant2_out1 <= '1' WHEN HDL_Counter_out1 = to_unsigned(16#9#, 4) ELSE
      '0';

  Logical_Operator3_out1 <=  NOT Compare_To_Constant2_out1;

  Logical_Operator1_out1 <=  NOT Compare_To_Constant1_out1;

  Logical_Operator2_out1 <= Compare_To_Constant7_out1 OR Logical_Operator1_out1;

  Logical_Operator_out1 <= Logical_Operator4_out1 AND (Constant10_out1 AND Logical_Operator2_out1);

  Logical_Operator7_out1 <= Logical_Operator6_out1 OR Logical_Operator_out1;

  Logical_Operator12_out1 <= Logical_Operator7_out1 AND Logical_Operator3_out1;

  -- Free running, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  HDL_Counter_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter_out1 <= to_unsigned(16#0#, 4);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Delay1_out1 = '1' THEN 
          HDL_Counter_out1 <= Data_Type_Conversion_out1;
        ELSIF Logical_Operator12_out1 = '1' THEN 
          HDL_Counter_out1 <= HDL_Counter_out1 + to_unsigned(16#1#, 4);
        END IF;
      END IF;
    END IF;
  END PROCESS HDL_Counter_process;


  
  Compare_To_Constant1_out1 <= '1' WHEN HDL_Counter_out1 = to_unsigned(16#4#, 4) ELSE
      '0';

  HDL_Counter_out1_dtc <= resize(HDL_Counter_out1, 8);

  Constant6_out1 <= to_unsigned(16#00#, 8);

  
  Switch3_out1 <= HDL_Counter_out1_dtc WHEN Compare_To_Constant1_out1 = '0' ELSE
      Constant6_out1;

  Add_add_temp <= resize(Switch1_out1, 10) + resize(Switch2_out1, 10);
  Add_out1 <= Add_add_temp + resize(Switch3_out1, 10);

  Constant13_out1 <= to_unsigned(16#00#, 8);

  Constant15_out1 <= to_unsigned(16#01#, 8);

  Constant17_out1 <= to_unsigned(16#02#, 8);

  Constant19_out1 <= to_unsigned(16#01#, 8);

  Constant21_out1 <= to_unsigned(16#00#, 8);

  Constant28_out1 <= to_unsigned(16#04#, 8);

  Constant27_out1 <= to_unsigned(16#04#, 8);

  Constant26_out1 <= to_unsigned(16#02#, 8);

  Constant1_out1 <= to_unsigned(16#FF#, 8);

  
  Index_Vector_DATA_out1 <= Constant13_out1 WHEN Add_out1 = to_unsigned(16#000#, 10) ELSE
      Constant15_out1 WHEN Add_out1 = to_unsigned(16#001#, 10) ELSE
      Constant17_out1 WHEN Add_out1 = to_unsigned(16#002#, 10) ELSE
      Constant19_out1 WHEN Add_out1 = to_unsigned(16#003#, 10) ELSE
      Constant21_out1 WHEN Add_out1 = to_unsigned(16#004#, 10) ELSE
      Constant28_out1 WHEN Add_out1 = to_unsigned(16#005#, 10) ELSE
      Constant27_out1 WHEN Add_out1 = to_unsigned(16#006#, 10) ELSE
      Constant26_out1 WHEN Add_out1 = to_unsigned(16#007#, 10) ELSE
      Constant1_out1;

  AdrOut <= std_logic_vector(Index_Vector_DATA_out1);

  Constant14_out1 <= to_unsigned(16#00#, 8);

  Constant16_out1 <= to_unsigned(16#01#, 8);

  Constant18_out1 <= to_unsigned(16#01#, 8);

  Constant20_out1 <= to_unsigned(16#0A#, 8);

  Constant22_out1 <= to_unsigned(16#00#, 8);

  Constant23_out1 <= to_unsigned(16#01#, 8);

  Constant24_out1 <= to_unsigned(16#0A#, 8);

  Constant25_out1 <= to_unsigned(16#02#, 8);

  Constant2_out1 <= to_unsigned(16#FF#, 8);

  
  Index_Vector_DATA1_out1 <= Constant14_out1 WHEN Add_out1 = to_unsigned(16#000#, 10) ELSE
      Constant16_out1 WHEN Add_out1 = to_unsigned(16#001#, 10) ELSE
      Constant18_out1 WHEN Add_out1 = to_unsigned(16#002#, 10) ELSE
      Constant20_out1 WHEN Add_out1 = to_unsigned(16#003#, 10) ELSE
      Constant22_out1 WHEN Add_out1 = to_unsigned(16#004#, 10) ELSE
      Constant23_out1 WHEN Add_out1 = to_unsigned(16#005#, 10) ELSE
      Constant24_out1 WHEN Add_out1 = to_unsigned(16#006#, 10) ELSE
      Constant25_out1 WHEN Add_out1 = to_unsigned(16#007#, 10) ELSE
      Constant2_out1;

  DataOut <= std_logic_vector(Index_Vector_DATA1_out1);

END rtl;
