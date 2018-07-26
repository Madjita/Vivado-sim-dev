-- -------------------------------------------------------------
-- 
-- File Name: D:\Matlab_Vhd\smartCart\OTLADKA\hdlsrc\smartCart5_1work\head_ip_src_Interface.vhd
-- Created: 2016-07-28 11:38:54
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_Interface
-- Source Path: smartCart5_1work/head/Interface
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_Interface IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        IO                                :   IN    std_logic;
        START                             :   IN    std_logic;
        STOP                              :   IN    std_logic;
        signals2                          :   OUT   std_logic_vector(2 DOWNTO 0);  -- sfix3
        Out3                              :   OUT   std_logic
        );
END head_ip_src_Interface;


ARCHITECTURE rtl OF head_ip_src_Interface IS

  -- Component Declarations
  COMPONENT head_ip_src_ColdStop2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Addr                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          Data                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DataOUT                         :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          Signal_rsvd                     :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          ADR_OUT                         :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
          );
  END COMPONENT;

  COMPONENT head_ip_src_ColdStart
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Reqest                          :   IN    std_logic;
          Addr                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          Data                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DataOUT                         :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          Signal_rsvd                     :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          ADR_OUT                         :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
          );
  END COMPONENT;

  COMPONENT head_ip_src_Head2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          ADR_IN                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DataIN                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          START                           :   IN    std_logic;
          STOP                            :   IN    std_logic;
          AdrOut                          :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          DataOut                         :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
          );
  END COMPONENT;

  COMPONENT head_ip_src_Swith_signal2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Adr                             :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          Data                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          OutAddr                         :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
          );
  END COMPONENT;

  COMPONENT head_ip_src_MUX2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          ADR                             :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DATA_0                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DATA_1                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          ADR_ST                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DAT_ST1                         :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          ADR_STOP                        :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          DAT_STOP                        :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          Signals                         :   OUT   std_logic_vector(2 DOWNTO 0);  -- sfix3
          ADR_OUT                         :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          DATA_OUT1                       :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : head_ip_src_ColdStop2
    USE ENTITY work.head_ip_src_ColdStop2(rtl);

  FOR ALL : head_ip_src_ColdStart
    USE ENTITY work.head_ip_src_ColdStart(rtl);

  FOR ALL : head_ip_src_Head2
    USE ENTITY work.head_ip_src_Head2(rtl);

  FOR ALL : head_ip_src_Swith_signal2
    USE ENTITY work.head_ip_src_Swith_signal2(rtl);

  FOR ALL : head_ip_src_MUX2
    USE ENTITY work.head_ip_src_MUX2(rtl);

  -- Signals
  SIGNAL Head2_out1                       : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Head2_out2                       : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL ColdStop2_out1                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL ColdStop2_out2                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL ColdStop2_out3                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL ColdStart_out1                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL ColdStart_out2                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL ColdStart_out3                   : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL MUX2_out2                        : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL MUX2_out3                        : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Swith_signal2_out1               : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL MUX2_out1                        : std_logic_vector(2 DOWNTO 0);  -- ufix3

BEGIN
  u_ColdStop2 : head_ip_src_ColdStop2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Addr => Head2_out1,  -- uint8
              Data => Head2_out2,  -- uint8
              DataOUT => ColdStop2_out1,  -- uint8
              Signal_rsvd => ColdStop2_out2,  -- uint8
              ADR_OUT => ColdStop2_out3  -- uint8
              );

  u_ColdStart : head_ip_src_ColdStart
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Reqest => IO,
              Addr => Head2_out1,  -- uint8
              Data => Head2_out2,  -- uint8
              DataOUT => ColdStart_out1,  -- uint8
              Signal_rsvd => ColdStart_out2,  -- uint8
              ADR_OUT => ColdStart_out3  -- uint8
              );

  u_Head2 : head_ip_src_Head2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              ADR_IN => MUX2_out2,  -- uint8
              DataIN => MUX2_out3,  -- uint8
              START => START,
              STOP => STOP,
              AdrOut => Head2_out1,  -- uint8
              DataOut => Head2_out2  -- uint8
              );

  u_Swith_signal2 : head_ip_src_Swith_signal2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Adr => Head2_out1,  -- uint8
              Data => Head2_out2,  -- uint8
              OutAddr => Swith_signal2_out1  -- uint8
              );

  u_MUX2 : head_ip_src_MUX2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              ADR => Swith_signal2_out1,  -- uint8
              DATA_0 => ColdStart_out2,  -- uint8
              DATA_1 => ColdStop2_out2,  -- uint8
              ADR_ST => ColdStart_out3,  -- uint8
              DAT_ST1 => ColdStart_out1,  -- uint8
              ADR_STOP => ColdStop2_out3,  -- uint8
              DAT_STOP => ColdStop2_out1,  -- uint8
              Signals => MUX2_out1,  -- sfix3
              ADR_OUT => MUX2_out2,  -- uint8
              DATA_OUT1 => MUX2_out3  -- uint8
              );

  signals2 <= MUX2_out1;

  Out3 <= IO;

END rtl;

