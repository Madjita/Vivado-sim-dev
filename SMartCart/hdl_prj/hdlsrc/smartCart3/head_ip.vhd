-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\smartCart3\head_ip.vhd
-- Created: 2016-07-12 09:39:12
-- 
-- Generated by MATLAB 9.0 and HDL Coder 3.8
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: -1
-- Target subsystem base rate: -1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: head_ip
-- Source Path: head_ip
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_ip IS
  PORT( IPCORE_CLK                        :   IN    std_logic;  -- ufix1
        IPCORE_RESETN                     :   IN    std_logic;  -- ufix1
        PmodJB1_in                        :   IN    std_logic;  -- ufix1
        AXI4_Lite_ACLK                    :   IN    std_logic;  -- ufix1
        AXI4_Lite_ARESETN                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_AWADDR                  :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Lite_AWVALID                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_WDATA                   :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Lite_WSTRB                   :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        AXI4_Lite_WVALID                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_BREADY                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_ARADDR                  :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Lite_ARVALID                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_RREADY                  :   IN    std_logic;  -- ufix1
        PmodJA1                           :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
        PmodJB1_out                       :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_AWREADY                 :   OUT   std_logic;  -- ufix1
        AXI4_Lite_WREADY                  :   OUT   std_logic;  -- ufix1
        AXI4_Lite_BRESP                   :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_BVALID                  :   OUT   std_logic;  -- ufix1
        AXI4_Lite_ARREADY                 :   OUT   std_logic;  -- ufix1
        AXI4_Lite_RDATA                   :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Lite_RRESP                   :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_RVALID                  :   OUT   std_logic  -- ufix1
        );
END head_ip;


ARCHITECTURE rtl OF head_ip IS

  -- Component Declarations
  COMPONENT head_ip_axi_lite
    PORT( reset                           :   IN    std_logic;
          AXI4_Lite_ACLK                  :   IN    std_logic;  -- ufix1
          AXI4_Lite_ARESETN               :   IN    std_logic;  -- ufix1
          AXI4_Lite_AWADDR                :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Lite_AWVALID               :   IN    std_logic;  -- ufix1
          AXI4_Lite_WDATA                 :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_WSTRB                 :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          AXI4_Lite_WVALID                :   IN    std_logic;  -- ufix1
          AXI4_Lite_BREADY                :   IN    std_logic;  -- ufix1
          AXI4_Lite_ARADDR                :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Lite_ARVALID               :   IN    std_logic;  -- ufix1
          AXI4_Lite_RREADY                :   IN    std_logic;  -- ufix1
          read_adrOUT                     :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
          read_STATUS                     :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          read_DataOut                    :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
          AXI4_Lite_AWREADY               :   OUT   std_logic;  -- ufix1
          AXI4_Lite_WREADY                :   OUT   std_logic;  -- ufix1
          AXI4_Lite_BRESP                 :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_Lite_BVALID                :   OUT   std_logic;  -- ufix1
          AXI4_Lite_ARREADY               :   OUT   std_logic;  -- ufix1
          AXI4_Lite_RDATA                 :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_RRESP                 :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_Lite_RVALID                :   OUT   std_logic;  -- ufix1
          write_axi_enable                :   OUT   std_logic;  -- ufix1
          write_START                     :   OUT   std_logic;  -- ufix1
          write_adrRDIN                   :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
          write_adrIN                     :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
          write_dataIN                    :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          write_STOP                      :   OUT   std_logic;  -- ufix1
          reset_internal                  :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT head_ip_dut
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          dut_enable                      :   IN    std_logic;  -- ufix1
          IO                              :   IN    std_logic;  -- ufix1
          START                           :   IN    std_logic;  -- ufix1
          STOP                            :   IN    std_logic;  -- ufix1
          adrRDIN                         :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
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
  FOR ALL : head_ip_axi_lite
    USE ENTITY work.head_ip_axi_lite(rtl);

  FOR ALL : head_ip_dut
    USE ENTITY work.head_ip_dut(rtl);

  -- Signals
  SIGNAL reset                            : std_logic;
  SIGNAL const_zero                       : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL reset_cm                         : std_logic;  -- ufix1
  SIGNAL reset_internal                   : std_logic;  -- ufix1
  SIGNAL adrOUT_sig                       : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL STATUS_sig                       : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL DataOut_sig                      : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL AXI4_Lite_BRESP_tmp              : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL AXI4_Lite_RDATA_tmp              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL AXI4_Lite_RRESP_tmp              : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL write_axi_enable                 : std_logic;  -- ufix1
  SIGNAL write_START                      : std_logic;  -- ufix1
  SIGNAL write_adrRDIN                    : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL write_adrIN                      : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL write_dataIN                     : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL write_STOP                       : std_logic;  -- ufix1
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL signals_sig                      : std_logic_vector(3 DOWNTO 0);  -- ufix4
  SIGNAL I0_OUT_sig                       : std_logic;  -- ufix1
  SIGNAL strob_sig                        : std_logic;  -- ufix1
  SIGNAL signals_sig_signed               : signed(3 DOWNTO 0);  -- sfix4
  SIGNAL PmodJA1_tmp                      : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL PmodJB1_out_tmp                  : unsigned(1 DOWNTO 0);  -- ufix2

BEGIN
  u_head_ip_axi_lite_inst : head_ip_axi_lite
    PORT MAP( reset => reset,
              AXI4_Lite_ACLK => AXI4_Lite_ACLK,  -- ufix1
              AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,  -- ufix1
              AXI4_Lite_AWADDR => AXI4_Lite_AWADDR,  -- ufix16
              AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,  -- ufix1
              AXI4_Lite_WDATA => AXI4_Lite_WDATA,  -- ufix32
              AXI4_Lite_WSTRB => AXI4_Lite_WSTRB,  -- ufix4
              AXI4_Lite_WVALID => AXI4_Lite_WVALID,  -- ufix1
              AXI4_Lite_BREADY => AXI4_Lite_BREADY,  -- ufix1
              AXI4_Lite_ARADDR => AXI4_Lite_ARADDR,  -- ufix16
              AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,  -- ufix1
              AXI4_Lite_RREADY => AXI4_Lite_RREADY,  -- ufix1
              read_adrOUT => adrOUT_sig,  -- ufix8
              read_STATUS => STATUS_sig,  -- ufix32
              read_DataOut => DataOut_sig,  -- ufix8
              AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,  -- ufix1
              AXI4_Lite_WREADY => AXI4_Lite_WREADY,  -- ufix1
              AXI4_Lite_BRESP => AXI4_Lite_BRESP_tmp,  -- ufix2
              AXI4_Lite_BVALID => AXI4_Lite_BVALID,  -- ufix1
              AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,  -- ufix1
              AXI4_Lite_RDATA => AXI4_Lite_RDATA_tmp,  -- ufix32
              AXI4_Lite_RRESP => AXI4_Lite_RRESP_tmp,  -- ufix2
              AXI4_Lite_RVALID => AXI4_Lite_RVALID,  -- ufix1
              write_axi_enable => write_axi_enable,  -- ufix1
              write_START => write_START,  -- ufix1
              write_adrRDIN => write_adrRDIN,  -- ufix8
              write_adrIN => write_adrIN,  -- ufix8
              write_dataIN => write_dataIN,  -- ufix32
              write_STOP => write_STOP,  -- ufix1
              reset_internal => reset_internal  -- ufix1
              );

  u_head_ip_dut_inst : head_ip_dut
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              dut_enable => write_axi_enable,  -- ufix1
              IO => PmodJB1_in,  -- ufix1
              START => write_START,  -- ufix1
              STOP => write_STOP,  -- ufix1
              adrRDIN => write_adrRDIN,  -- ufix8
              adrIN => write_adrIN,  -- ufix8
              dataIN => write_dataIN,  -- ufix32
              ce_out => ce_out_sig,  -- ufix1
              signals => signals_sig,  -- sfix4
              I0_OUT => I0_OUT_sig,  -- ufix1
              adrOUT => adrOUT_sig,  -- ufix8
              STATUS => STATUS_sig,  -- ufix32
              DataOut => DataOut_sig,  -- ufix8
              strob => strob_sig  -- ufix1
              );

  const_zero <= to_unsigned(16#0#, 4);

  reset_cm <=  NOT IPCORE_RESETN;

  reset <= reset_cm OR reset_internal;

  signals_sig_signed <= signed(signals_sig);

  PmodJA1_tmp <= const_zero & unsigned(signals_sig_signed);

  PmodJA1 <= std_logic_vector(PmodJA1_tmp);

  PmodJB1_out_tmp <= unsigned'(strob_sig & I0_OUT_sig);

  PmodJB1_out <= std_logic_vector(PmodJB1_out_tmp);

  AXI4_Lite_BRESP <= AXI4_Lite_BRESP_tmp;

  AXI4_Lite_RDATA <= AXI4_Lite_RDATA_tmp;

  AXI4_Lite_RRESP <= AXI4_Lite_RRESP_tmp;

END rtl;

