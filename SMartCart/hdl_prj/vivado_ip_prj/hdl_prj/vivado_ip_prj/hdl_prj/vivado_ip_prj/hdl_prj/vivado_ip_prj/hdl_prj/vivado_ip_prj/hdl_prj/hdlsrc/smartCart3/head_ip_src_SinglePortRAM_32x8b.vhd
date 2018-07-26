-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\smartCart3\head_ip_src_SinglePortRAM_32x8b.vhd
-- Created: 2016-07-11 16:24:40
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip_src_SinglePortRAM_32x8b
-- Source Path: smartCart3/head/Reciver/SinglePortRAM_Wrapper_32x8b/SinglePortRAM_32x8b
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip_src_SinglePortRAM_32x8b IS
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        din                               :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        addr                              :   IN    std_logic_vector(4 DOWNTO 0);  -- ufix5
        we                                :   IN    std_logic;  -- ufix1
        dout                              :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END head_ip_src_SinglePortRAM_32x8b;


ARCHITECTURE rtl OF head_ip_src_SinglePortRAM_32x8b IS

  -- Local Type Definitions
  CONSTANT AddrWidth : INTEGER := 5;
  CONSTANT DataWidth : INTEGER := 8;
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (OTHERS => (OTHERS => '0'));
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL addr_unsigned                    : unsigned(4 DOWNTO 0);  -- ufix5

BEGIN
  addr_unsigned <= unsigned(addr);

  SinglePortRAM_32x8b_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF enb = '1' THEN
        IF we = '1' THEN
          ram(to_integer(addr_unsigned)) <= din;
        END IF;
        data_int <= ram(to_integer(addr_unsigned));
      END IF;
    END IF;
  END PROCESS SinglePortRAM_32x8b_process;

  dout <= data_int;

END rtl;
