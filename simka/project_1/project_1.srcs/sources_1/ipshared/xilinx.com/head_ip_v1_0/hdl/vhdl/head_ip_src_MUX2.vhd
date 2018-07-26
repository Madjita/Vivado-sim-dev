-- -------------------------------------------------------------
-- 
-- File Name: D:\Matlab_Vhd\smartCart\OTLADKA\hdlsrc\smartCart5_1work\head_ip_src_MUX2.vhd
-- Created: 2016-07-28 11:38:54
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_MUX2
-- Source Path: smartCart5_1work/head/Interface/MUX2
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_MUX2 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        ADR                               :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        DATA_0                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        DATA_1                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        ADR_ST                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        DAT_ST1                           :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        ADR_STOP                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        DAT_STOP                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        Signals                           :   OUT   std_logic_vector(2 DOWNTO 0);  -- sfix3
        ADR_OUT                           :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        DATA_OUT1                         :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END head_ip_src_MUX2;


ARCHITECTURE rtl OF head_ip_src_MUX2 IS

  -- Signals
  SIGNAL ADR_unsigned                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant_out1         : std_logic;
  SIGNAL ADR_is_not0                      : std_logic;
  SIGNAL Logical_Operator_out1            : std_logic;
  SIGNAL Compare_To_Constant1_out1        : std_logic;
  SIGNAL DATA_1_unsigned                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL DATA_0_unsigned                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL SA1_out1                         : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch1_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Bit_Slice_out1                   : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL Bit_Slice4_out1                  : std_logic;  -- ufix1
  SIGNAL Bit_Slice2_out1                  : std_logic;  -- ufix1
  SIGNAL Bit_Slice1_out1                  : std_logic;  -- ufix1
  SIGNAL Bit_Concat_out1                  : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL Data_Type_Conversion_out1        : signed(2 DOWNTO 0);  -- sfix3
  SIGNAL Constant_out1                    : std_logic;
  SIGNAL Constant_out1_dtc                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL ADR_STOP_unsigned                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch4_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL ADR_ST_unsigned                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch2_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant1_out1                   : std_logic;
  SIGNAL Constant1_out1_dtc               : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL DAT_STOP_unsigned                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch5_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL DAT_ST1_unsigned                 : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch3_out1                     : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  ADR_unsigned <= unsigned(ADR);

  
  Compare_To_Constant_out1 <= '1' WHEN ADR_unsigned = to_unsigned(16#01#, 8) ELSE
      '0';

  
  ADR_is_not0 <= '1' WHEN ADR_unsigned /= to_unsigned(16#00#, 8) ELSE
      '0';

  Logical_Operator_out1 <= Compare_To_Constant_out1 OR ADR_is_not0;

  
  Compare_To_Constant1_out1 <= '1' WHEN ADR_unsigned = to_unsigned(16#02#, 8) ELSE
      '0';

  DATA_1_unsigned <= unsigned(DATA_1);

  DATA_0_unsigned <= unsigned(DATA_0);

  
  Switch1_out1 <= SA1_out1 WHEN Compare_To_Constant1_out1 = '0' ELSE
      DATA_1_unsigned;

  
  Switch_out1 <= Switch1_out1 WHEN Compare_To_Constant_out1 = '0' ELSE
      DATA_0_unsigned;

  SA1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA1_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator_out1 = '1' THEN
        SA1_out1 <= Switch_out1;
      END IF;
    END IF;
  END PROCESS SA1_process;


  Bit_Slice_out1 <= SA1_out1(4 DOWNTO 0);

  Bit_Slice4_out1 <= Bit_Slice_out1(3);

  Bit_Slice2_out1 <= Bit_Slice_out1(1);

  Bit_Slice1_out1 <= Bit_Slice_out1(0);

  Bit_Concat_out1 <= unsigned'(Bit_Slice4_out1 & Bit_Slice2_out1 & Bit_Slice1_out1);

  Data_Type_Conversion_out1 <= signed(Bit_Concat_out1);

  Signals <= std_logic_vector(Data_Type_Conversion_out1);

  Constant_out1 <= '0';

  Constant_out1_dtc <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & Constant_out1;

  ADR_STOP_unsigned <= unsigned(ADR_STOP);

  
  Switch4_out1 <= Constant_out1_dtc WHEN Compare_To_Constant1_out1 = '0' ELSE
      ADR_STOP_unsigned;

  ADR_ST_unsigned <= unsigned(ADR_ST);

  
  Switch2_out1 <= Switch4_out1 WHEN Compare_To_Constant_out1 = '0' ELSE
      ADR_ST_unsigned;

  ADR_OUT <= std_logic_vector(Switch2_out1);

  Constant1_out1 <= '0';

  Constant1_out1_dtc <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & Constant1_out1;

  DAT_STOP_unsigned <= unsigned(DAT_STOP);

  
  Switch5_out1 <= Constant1_out1_dtc WHEN Compare_To_Constant1_out1 = '0' ELSE
      DAT_STOP_unsigned;

  DAT_ST1_unsigned <= unsigned(DAT_ST1);

  
  Switch3_out1 <= Switch5_out1 WHEN Compare_To_Constant_out1 = '0' ELSE
      DAT_ST1_unsigned;

  DATA_OUT1 <= std_logic_vector(Switch3_out1);

END rtl;

