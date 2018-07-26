-- -------------------------------------------------------------
-- 
-- File Name: D:\Matlab_Vhd\smartCart\OTLADKA\hdlsrc\smartCart5_1work\head_ip_src_ColdStart.vhd
-- Created: 2016-07-28 11:38:54
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_ColdStart
-- Source Path: smartCart5_1work/head/Interface/ColdStart
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_ColdStart IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Reqest                            :   IN    std_logic;
        Addr                              :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        Data                              :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        DataOUT                           :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        Signal_rsvd                       :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        ADR_OUT                           :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END head_ip_src_ColdStart;


ARCHITECTURE rtl OF head_ip_src_ColdStart IS

  -- Signals
  SIGNAL Addr_unsigned                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant4_out1        : std_logic;
  SIGNAL Delay6_out1                      : std_logic;
  SIGNAL Logical_Operator23_out1          : std_logic;
  SIGNAL Logical_Operator24_out1          : std_logic;
  SIGNAL Data_unsigned                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL SA7_out1                         : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch1_out1                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL SA7_enable                       : std_logic;
  SIGNAL Bit_Slice2_out1                  : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion4_out1       : std_logic;
  SIGNAL Bit_Slice3_out1                  : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion5_out1       : std_logic;
  SIGNAL Bit_Slice_out1                   : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion2_out1       : std_logic;
  SIGNAL Bit_Slice1_out1                  : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion3_out1       : std_logic;
  SIGNAL Logical_Operator1_out1           : std_logic;
  SIGNAL Logical_Operator18_out1          : std_logic;
  SIGNAL Logical_Operator3_out1           : std_logic;
  SIGNAL Logical_Operator2_out1           : std_logic;
  SIGNAL Constant2_out1                   : std_logic;
  SIGNAL Switch2_out1                     : std_logic;
  SIGNAL SA1_out1                         : std_logic;
  SIGNAL Delay_out1                       : std_logic;
  SIGNAL Logical_Operator_out1            : std_logic;
  SIGNAL Logical_Operator17_out1          : std_logic;
  SIGNAL Constant6_out1                   : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Constant3_out1                   : std_logic;
  SIGNAL Constant7_out1                   : std_logic;
  SIGNAL Constant1_out1                   : std_logic;
  SIGNAL Constant_out1                    : std_logic;
  SIGNAL Compare_To_Constant3_out1        : std_logic;
  SIGNAL Switch6_out1                     : std_logic;
  SIGNAL HDL_Counter1_out1                : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Logical_Operator10_out1          : std_logic;
  SIGNAL HDL_Counter1_stepreg             : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Logical_Operator9_out1           : std_logic;
  SIGNAL Logical_Operator11_out1          : std_logic;
  SIGNAL Logical_Operator29_out1          : std_logic;
  SIGNAL Switch8_out1                     : std_logic;
  SIGNAL Logical_Operator31_out1          : std_logic;
  SIGNAL Logical_Operator30_out1          : std_logic;
  SIGNAL Compare_To_Constant2_out1        : std_logic;
  SIGNAL Switch5_out1                     : std_logic;
  SIGNAL Logical_Operator21_out1          : std_logic;
  SIGNAL SA5_out1                         : std_logic;
  SIGNAL Logical_Operator8_out1           : std_logic;
  SIGNAL Delay5_out1                      : std_logic;
  SIGNAL Logical_Operator28_out1          : std_logic;
  SIGNAL Logical_Operator25_out1          : std_logic;
  SIGNAL SA9_out1                         : std_logic;
  SIGNAL Switch_out1                      : std_logic;
  SIGNAL Delay2_reg                       : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Delay2_out1                      : std_logic;
  SIGNAL Logical_Operator22_out1          : std_logic;
  SIGNAL SA6_out1                         : std_logic;
  SIGNAL Logical_Operator12_out1          : std_logic;
  SIGNAL Bit_Concat_out1                  : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL Data_Type_Conversion1_out1       : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Compare_To_Constant_out1         : std_logic;
  SIGNAL Logical_Operator19_out1          : std_logic;
  SIGNAL Switch3_out1                     : std_logic;
  SIGNAL SA2_out1                         : std_logic;
  SIGNAL Logical_Operator4_out1           : std_logic;
  SIGNAL SA3_out1                         : std_logic;
  SIGNAL Logical_Operator5_out1           : std_logic;
  SIGNAL Delay1_out1                      : std_logic;
  SIGNAL HDL_Counter_out1                 : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL HDL_Counter_stepreg              : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL Compare_To_Constant5_out1        : std_logic;
  SIGNAL HDL_Counter2_out1                : std_logic;  -- ufix1
  SIGNAL Data_Type_Conversion7_out1       : std_logic;
  SIGNAL Compare_To_Constant1_out1        : std_logic;
  SIGNAL Logical_Operator20_out1          : std_logic;
  SIGNAL Switch4_out1                     : std_logic;
  SIGNAL SA4_out1                         : std_logic;
  SIGNAL Logical_Operator6_out1           : std_logic;
  SIGNAL Logical_Operator7_out1           : std_logic;
  SIGNAL Bit_Concat1_out1                 : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL Data_Type_Conversion6_out1       : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay3_out1                      : std_logic;
  SIGNAL Logical_Operator13_out1          : std_logic;
  SIGNAL Delay4_out1                      : std_logic;
  SIGNAL Logical_Operator14_out1          : std_logic;
  SIGNAL Logical_Operator15_out1          : std_logic;
  SIGNAL Logical_Operator16_out1          : std_logic;
  SIGNAL Constant5_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Constant4_out1                   : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch7_out1                     : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  -- RST
  -- 
  -- START
  -- 
  -- STOP
  -- 
  -- LOCK

  Addr_unsigned <= unsigned(Addr);

  
  Compare_To_Constant4_out1 <= '1' WHEN Addr_unsigned = to_unsigned(16#01#, 8) ELSE
      '0';

  Delay6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay6_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay6_out1 <= Compare_To_Constant4_out1;
      END IF;
    END IF;
  END PROCESS Delay6_process;


  Logical_Operator23_out1 <= Compare_To_Constant4_out1 XOR Delay6_out1;

  Logical_Operator24_out1 <= Compare_To_Constant4_out1 AND Logical_Operator23_out1;

  Data_unsigned <= unsigned(Data);

  
  Switch1_out1 <= SA7_out1 WHEN Logical_Operator24_out1 = '0' ELSE
      Data_unsigned;

  
  SA7_enable <= '1' WHEN Switch1_out1 /= to_unsigned(16#00#, 8) ELSE
      '0';

  SA7_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA7_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND SA7_enable = '1' THEN
        SA7_out1 <= Switch1_out1;
      END IF;
    END IF;
  END PROCESS SA7_process;


  Bit_Slice2_out1 <= SA7_out1(1);

  
  Data_Type_Conversion4_out1 <= '1' WHEN Bit_Slice2_out1 /= '0' ELSE
      '0';

  Bit_Slice3_out1 <= SA7_out1(0);

  
  Data_Type_Conversion5_out1 <= '1' WHEN Bit_Slice3_out1 /= '0' ELSE
      '0';

  Bit_Slice_out1 <= SA7_out1(3);

  
  Data_Type_Conversion2_out1 <= '1' WHEN Bit_Slice_out1 /= '0' ELSE
      '0';

  Bit_Slice1_out1 <= SA7_out1(2);

  
  Data_Type_Conversion3_out1 <= '1' WHEN Bit_Slice1_out1 /= '0' ELSE
      '0';

  Logical_Operator1_out1 <= Data_Type_Conversion2_out1 OR Data_Type_Conversion3_out1;

  Logical_Operator18_out1 <= Logical_Operator1_out1 OR Data_Type_Conversion5_out1;

  Logical_Operator3_out1 <=  NOT Data_Type_Conversion3_out1;

  Logical_Operator2_out1 <= Data_Type_Conversion2_out1 AND Logical_Operator3_out1;

  Constant2_out1 <= '0';

  
  Switch2_out1 <= Logical_Operator2_out1 WHEN Data_Type_Conversion5_out1 = '0' ELSE
      Constant2_out1;

  SA1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA1_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator18_out1 = '1' THEN
        SA1_out1 <= Switch2_out1;
      END IF;
    END IF;
  END PROCESS SA1_process;


  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay_out1 <= SA1_out1;
      END IF;
    END IF;
  END PROCESS Delay_process;


  Logical_Operator_out1 <= SA1_out1 XOR Delay_out1;

  Logical_Operator17_out1 <= Logical_Operator_out1 OR Data_Type_Conversion5_out1;

  Constant6_out1 <= to_unsigned(0, 32);

  Constant3_out1 <= '0';

  Constant7_out1 <= '0';

  Constant1_out1 <= '1';

  Constant_out1 <= '0';

  
  Switch6_out1 <= Compare_To_Constant3_out1 WHEN Data_Type_Conversion5_out1 = '0' ELSE
      Constant3_out1;

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 40000
  HDL_Counter1_step_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter1_stepreg <= to_unsigned(1, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Logical_Operator17_out1 = '1' THEN 
          HDL_Counter1_stepreg <= to_unsigned(1, 32);
        ELSIF Data_Type_Conversion5_out1 = '1' THEN 
          IF Constant6_out1 = to_unsigned(40000, 32) THEN 
            HDL_Counter1_stepreg <= unsigned'(X"FFFF63C0");
          ELSE 
            HDL_Counter1_stepreg <= to_unsigned(1, 32);
          END IF;
        ELSIF Logical_Operator10_out1 = '1' THEN 
          IF HDL_Counter1_out1 = to_unsigned(39999, 32) THEN 
            HDL_Counter1_stepreg <= unsigned'(X"FFFF63C0");
          ELSE 
            HDL_Counter1_stepreg <= to_unsigned(1, 32);
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS HDL_Counter1_step_process;


  Logical_Operator11_out1 <=  NOT Logical_Operator9_out1;

  
  Switch8_out1 <= Logical_Operator29_out1 WHEN Data_Type_Conversion5_out1 = '0' ELSE
      Constant7_out1;

  Logical_Operator30_out1 <=  NOT Logical_Operator31_out1;

  
  Switch5_out1 <= Compare_To_Constant2_out1 WHEN Data_Type_Conversion5_out1 = '0' ELSE
      Constant3_out1;

  
  Compare_To_Constant2_out1 <= '1' WHEN HDL_Counter1_out1 = to_unsigned(4900, 32) ELSE
      '0';

  Logical_Operator21_out1 <= Compare_To_Constant2_out1 OR Data_Type_Conversion5_out1;

  SA5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA5_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator21_out1 = '1' THEN
        SA5_out1 <= Switch5_out1;
      END IF;
    END IF;
  END PROCESS SA5_process;


  Logical_Operator8_out1 <= Data_Type_Conversion4_out1 AND SA5_out1;

  Logical_Operator31_out1 <= Reqest AND Logical_Operator8_out1;

  Delay5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay5_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay5_out1 <= Logical_Operator31_out1;
      END IF;
    END IF;
  END PROCESS Delay5_process;


  Logical_Operator28_out1 <= Delay5_out1 XOR Logical_Operator31_out1;

  Logical_Operator29_out1 <= Logical_Operator28_out1 AND Logical_Operator30_out1;

  Logical_Operator25_out1 <= Logical_Operator29_out1 OR Data_Type_Conversion5_out1;

  SA9_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA9_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator25_out1 = '1' THEN
        SA9_out1 <= Switch8_out1;
      END IF;
    END IF;
  END PROCESS SA9_process;


  
  Switch_out1 <= Constant1_out1 WHEN SA9_out1 = '0' ELSE
      Constant_out1;

  Delay2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay2_reg <= (OTHERS => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay2_reg(0) <= Switch_out1;
        Delay2_reg(1) <= Delay2_reg(0);
      END IF;
    END IF;
  END PROCESS Delay2_process;

  Delay2_out1 <= Delay2_reg(1);

  Logical_Operator10_out1 <= Delay2_out1 AND Logical_Operator11_out1;

  HDL_Counter1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter1_out1 <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Logical_Operator17_out1 = '1' THEN 
          HDL_Counter1_out1 <= to_unsigned(0, 32);
        ELSIF Data_Type_Conversion5_out1 = '1' THEN 
          HDL_Counter1_out1 <= Constant6_out1;
        ELSIF Logical_Operator10_out1 = '1' THEN 
          HDL_Counter1_out1 <= HDL_Counter1_out1 + HDL_Counter1_stepreg;
        END IF;
      END IF;
    END IF;
  END PROCESS HDL_Counter1_process;


  
  Compare_To_Constant3_out1 <= '1' WHEN HDL_Counter1_out1 = to_unsigned(280000, 32) ELSE
      '0';

  Logical_Operator22_out1 <= Data_Type_Conversion5_out1 OR Compare_To_Constant3_out1;

  SA6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA6_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator22_out1 = '1' THEN
        SA6_out1 <= Switch6_out1;
      END IF;
    END IF;
  END PROCESS SA6_process;


  Logical_Operator9_out1 <= Data_Type_Conversion4_out1 AND SA6_out1;

  Logical_Operator12_out1 <=  NOT Logical_Operator10_out1;

  Bit_Concat_out1 <= unsigned'(Logical_Operator9_out1 & Logical_Operator12_out1);

  Data_Type_Conversion1_out1 <= resize(Bit_Concat_out1, 8);

  DataOUT <= std_logic_vector(Data_Type_Conversion1_out1);

  
  Compare_To_Constant_out1 <= '1' WHEN HDL_Counter1_out1 = to_unsigned(700, 32) ELSE
      '0';

  Logical_Operator19_out1 <= Compare_To_Constant_out1 OR Data_Type_Conversion5_out1;

  
  Switch3_out1 <= Compare_To_Constant_out1 WHEN Data_Type_Conversion5_out1 = '0' ELSE
      Constant3_out1;

  SA2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA2_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator19_out1 = '1' THEN
        SA2_out1 <= Switch3_out1;
      END IF;
    END IF;
  END PROCESS SA2_process;


  Logical_Operator4_out1 <= SA2_out1 AND Data_Type_Conversion4_out1;

  SA3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA3_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator19_out1 = '1' THEN
        SA3_out1 <= Switch3_out1;
      END IF;
    END IF;
  END PROCESS SA3_process;


  Logical_Operator5_out1 <= SA3_out1 AND Data_Type_Conversion4_out1;

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay1_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay1_out1 <= Delay_out1;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 6
  HDL_Counter_step_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter_stepreg <= to_unsigned(16#1#, 3);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Logical_Operator17_out1 = '1' THEN 
          HDL_Counter_stepreg <= to_unsigned(16#1#, 3);
        ELSIF Delay1_out1 = '1' THEN 
          IF HDL_Counter_out1 = to_unsigned(16#5#, 3) THEN 
            HDL_Counter_stepreg <= to_unsigned(16#2#, 3);
          ELSE 
            HDL_Counter_stepreg <= to_unsigned(16#1#, 3);
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS HDL_Counter_step_process;


  HDL_Counter_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter_out1 <= to_unsigned(16#0#, 3);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Logical_Operator17_out1 = '1' THEN 
          HDL_Counter_out1 <= to_unsigned(16#0#, 3);
        ELSIF Delay1_out1 = '1' THEN 
          HDL_Counter_out1 <= HDL_Counter_out1 + HDL_Counter_stepreg;
        END IF;
      END IF;
    END IF;
  END PROCESS HDL_Counter_process;


  
  Compare_To_Constant5_out1 <= '1' WHEN HDL_Counter_out1 = to_unsigned(16#0#, 3) ELSE
      '0';

  -- Free running, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  HDL_Counter2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      HDL_Counter2_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Compare_To_Constant5_out1 = '1' THEN
        HDL_Counter2_out1 <=  NOT HDL_Counter2_out1;
      END IF;
    END IF;
  END PROCESS HDL_Counter2_process;


  
  Data_Type_Conversion7_out1 <= '1' WHEN HDL_Counter2_out1 /= '0' ELSE
      '0';

  
  Compare_To_Constant1_out1 <= '1' WHEN HDL_Counter1_out1 = to_unsigned(2100, 32) ELSE
      '0';

  Logical_Operator20_out1 <= Data_Type_Conversion5_out1 OR Compare_To_Constant1_out1;

  
  Switch4_out1 <= Compare_To_Constant1_out1 WHEN Data_Type_Conversion5_out1 = '0' ELSE
      Constant3_out1;

  SA4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      SA4_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND Logical_Operator20_out1 = '1' THEN
        SA4_out1 <= Switch4_out1;
      END IF;
    END IF;
  END PROCESS SA4_process;


  Logical_Operator6_out1 <= Data_Type_Conversion4_out1 AND SA4_out1;

  Logical_Operator7_out1 <= Data_Type_Conversion7_out1 AND Logical_Operator6_out1;

  Bit_Concat1_out1 <= unsigned'(Logical_Operator8_out1 & Logical_Operator4_out1 & Logical_Operator5_out1 & Logical_Operator7_out1);

  Data_Type_Conversion6_out1 <= resize(Bit_Concat1_out1, 8);

  Signal_rsvd <= std_logic_vector(Data_Type_Conversion6_out1);

  Delay3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay3_out1 <= Logical_Operator12_out1;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  Logical_Operator13_out1 <= Logical_Operator12_out1 XOR Delay3_out1;

  Delay4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay4_out1 <= Logical_Operator9_out1;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  Logical_Operator14_out1 <= Logical_Operator9_out1 XOR Delay4_out1;

  Logical_Operator15_out1 <= Logical_Operator13_out1 OR Logical_Operator14_out1;

  Logical_Operator16_out1 <= Logical_Operator8_out1 AND Logical_Operator15_out1;

  Constant5_out1 <= to_unsigned(16#00#, 8);

  Constant4_out1 <= to_unsigned(16#01#, 8);

  
  Switch7_out1 <= Constant5_out1 WHEN Logical_Operator16_out1 = '0' ELSE
      Constant4_out1;

  ADR_OUT <= std_logic_vector(Switch7_out1);

END rtl;

