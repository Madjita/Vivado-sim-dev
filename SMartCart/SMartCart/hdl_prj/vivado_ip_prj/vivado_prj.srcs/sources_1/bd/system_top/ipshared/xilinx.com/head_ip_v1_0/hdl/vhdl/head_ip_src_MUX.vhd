-- -------------------------------------------------------------
-- 
-- File Name: D:\direct_ip\smart_ip\hdlsrc\smartCart5_1work\head_ip_src_MUX.vhd
-- Created: 2017-11-16 10:43:19
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_MUX
-- Source Path: smartCart5_1work/head/MUX
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_MUX IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        ADR1                              :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        ADR2                              :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        mADR3                             :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        Data1                             :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        Data2                             :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        mData3                            :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        DataOut                           :   OUT   std_logic_vector(31 DOWNTO 0);  -- uint32
        AdrOut                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END head_ip_src_MUX;


ARCHITECTURE rtl OF head_ip_src_MUX IS

  -- Signals
  SIGNAL mADR3_unsigned                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay3_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant_out1         : std_logic;
  SIGNAL Constant1_out1                   : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL mData3_unsigned                  : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Delay2_out1                      : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Switch_out1                      : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Data_Type_Conversion_out1        : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL Data1_unsigned                   : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Delay4_out1                      : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Data2_unsigned                   : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Delay5_out1                      : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Constant2_out1                   : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Index_Vector1_out1               : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL ADR1_unsigned                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay_out1                       : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL ADR2_unsigned                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay1_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant_out1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Index_Vector_out1                : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  mADR3_unsigned <= unsigned(mADR3);

  Delay3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay3_out1 <= mADR3_unsigned;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  
  Compare_To_Constant_out1 <= '1' WHEN Delay3_out1 = to_unsigned(16#04#, 8) ELSE
      '0';

  Constant1_out1 <= to_unsigned(2, 32);

  mData3_unsigned <= unsigned(mData3);

  Delay2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay2_out1 <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay2_out1 <= mData3_unsigned;
      END IF;
    END IF;
  END PROCESS Delay2_process;


  
  Switch_out1 <= Constant1_out1 WHEN Compare_To_Constant_out1 = '0' ELSE
      Delay2_out1;

  Data_Type_Conversion_out1 <= Switch_out1(1 DOWNTO 0);

  Data1_unsigned <= unsigned(Data1);

  Delay4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1 <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay4_out1 <= Data1_unsigned;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  Data2_unsigned <= unsigned(Data2);

  Delay5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay5_out1 <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay5_out1 <= Data2_unsigned;
      END IF;
    END IF;
  END PROCESS Delay5_process;


  Constant2_out1 <= to_unsigned(0, 32);

  
  Index_Vector1_out1 <= Delay4_out1 WHEN Data_Type_Conversion_out1 = to_unsigned(16#0#, 2) ELSE
      Delay5_out1 WHEN Data_Type_Conversion_out1 = to_unsigned(16#1#, 2) ELSE
      Constant2_out1;

  DataOut <= std_logic_vector(Index_Vector1_out1);

  ADR1_unsigned <= unsigned(ADR1);

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay_out1 <= ADR1_unsigned;
      END IF;
    END IF;
  END PROCESS Delay_process;


  ADR2_unsigned <= unsigned(ADR2);

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay1_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay1_out1 <= ADR2_unsigned;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  Constant_out1 <= to_unsigned(16#00#, 8);

  
  Index_Vector_out1 <= Delay_out1 WHEN Data_Type_Conversion_out1 = to_unsigned(16#0#, 2) ELSE
      Delay1_out1 WHEN Data_Type_Conversion_out1 = to_unsigned(16#1#, 2) ELSE
      Constant_out1;

  AdrOut <= std_logic_vector(Index_Vector_out1);

END rtl;

