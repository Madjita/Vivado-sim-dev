-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\smartCart3\head_ip_dut.vhd
-- Created: 2016-07-11 16:24:43
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_dut
-- Source Path: head_ip/head_ip_dut
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_dut IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        dut_enable                        :   IN    std_logic;  -- ufix1
        IO                                :   IN    std_logic;  -- ufix1
        START                             :   IN    std_logic;  -- ufix1
        STOP                              :   IN    std_logic;  -- ufix1
        adrRDIN                           :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
        RD                                :   IN    std_logic;  -- ufix1
        adrIN                             :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
        dataIN                            :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        ce_out                            :   OUT   std_logic;  -- ufix1
        signals                           :   OUT   std_logic_vector(3 DOWNTO 0);  -- sfix4
        I0_OUT                            :   OUT   std_logic;  -- ufix1
        adrOUT                            :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
        STATUS                            :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        DataOut                           :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
        strob                             :   OUT   std_logic  -- ufix1
        );
END head_ip_dut;


ARCHITECTURE rtl OF head_ip_dut IS

  -- Component Declarations
  COMPONENT head_ip_src_head
    PORT( clk                             :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          reset                           :   IN    std_logic;
          IO                              :   IN    std_logic;  -- ufix1
          START                           :   IN    std_logic;  -- ufix1
          STOP                            :   IN    std_logic;  -- ufix1
          adrRDIN                         :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
          RD                              :   IN    std_logic;  -- ufix1
          adrIN                           :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
          dataIN                          :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          ce_out                          :   OUT   std_logic;  -- ufix1
          signals                         :   OUT   std_logic_vector(3 DOWNTO 0);  -- sfix4
          I0_OUT                          :   OUT   std_logic;  -- ufix1
          adrOUT                          :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
          STATUS                          :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          DataOut                         :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
          strob                           :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : head_ip_src_head
    USE ENTITY work.head_ip_src_head(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL IO_sig                           : std_logic;  -- ufix1
  SIGNAL START_sig                        : std_logic;  -- ufix1
  SIGNAL STOP_sig                         : std_logic;  -- ufix1
  SIGNAL RD_sig                           : std_logic;  -- ufix1
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL signals_sig                      : std_logic_vector(3 DOWNTO 0);  -- ufix4
  SIGNAL I0_OUT_sig                       : std_logic;  -- ufix1
  SIGNAL adrOUT_sig                       : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL STATUS_sig                       : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL DataOut_sig                      : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL strob_sig                        : std_logic;  -- ufix1

BEGIN
  u_head_ip_src_head : head_ip_src_head
    PORT MAP( clk => clk,
              clk_enable => enb,
              reset => reset,
              IO => IO_sig,  -- ufix1
              START => START_sig,  -- ufix1
              STOP => STOP_sig,  -- ufix1
              adrRDIN => adrRDIN,  -- ufix8
              RD => RD_sig,  -- ufix1
              adrIN => adrIN,  -- ufix8
              dataIN => dataIN,  -- ufix32
              ce_out => ce_out_sig,  -- ufix1
              signals => signals_sig,  -- sfix4
              I0_OUT => I0_OUT_sig,  -- ufix1
              adrOUT => adrOUT_sig,  -- ufix8
              STATUS => STATUS_sig,  -- ufix32
              DataOut => DataOut_sig,  -- ufix8
              strob => strob_sig  -- ufix1
              );

  IO_sig <= IO;

  START_sig <= START;

  STOP_sig <= STOP;

  RD_sig <= RD;

  enb <= dut_enable;

  ce_out <= ce_out_sig;

  signals <= signals_sig;

  I0_OUT <= I0_OUT_sig;

  adrOUT <= adrOUT_sig;

  STATUS <= STATUS_sig;

  DataOut <= DataOut_sig;

  strob <= strob_sig;

END rtl;

