-- -------------------------------------------------------------
-- 
-- File Name: D:\Matlab_Vhd\hdl_prj\hdlsrc\smartCart3111\head_ip_src_signal_edg.vhd
-- Created: 2016-07-17 11:16:19
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_signal_edg
-- Source Path: smartCart3111/head/Manager/signal_edg
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_signal_edg IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In1                               :   IN    std_logic;
        Out1                              :   OUT   std_logic
        );
END head_ip_src_signal_edg;


ARCHITECTURE rtl OF head_ip_src_signal_edg IS

  -- Signals
  SIGNAL Delay4_out1                      : std_logic;
  SIGNAL Logical_Operator1_out1           : std_logic;
  SIGNAL Logical_Operator15_out1          : std_logic;

BEGIN
  Delay4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay4_out1 <= In1;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  Logical_Operator1_out1 <= Delay4_out1 XOR In1;

  Logical_Operator15_out1 <= Logical_Operator1_out1 AND In1;

  Out1 <= Logical_Operator15_out1;

END rtl;

