-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:head_ip:1.0
-- IP Revision: 1607281139

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT system_top_head_ip_0_0
  PORT (
    IPCORE_CLK : IN STD_LOGIC;
    IPCORE_RESETN : IN STD_LOGIC;
    IO : IN STD_LOGIC;
    AXI4_Lite_ACLK : IN STD_LOGIC;
    AXI4_Lite_ARESETN : IN STD_LOGIC;
    AXI4_Lite_AWADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    AXI4_Lite_AWVALID : IN STD_LOGIC;
    AXI4_Lite_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    AXI4_Lite_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    AXI4_Lite_WVALID : IN STD_LOGIC;
    AXI4_Lite_BREADY : IN STD_LOGIC;
    AXI4_Lite_ARADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    AXI4_Lite_ARVALID : IN STD_LOGIC;
    AXI4_Lite_RREADY : IN STD_LOGIC;
    signals : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    I0_OUT : OUT STD_LOGIC;
    strob : OUT STD_LOGIC;
    irq : OUT STD_LOGIC;
    trans_io : OUT STD_LOGIC;
    switch_io : OUT STD_LOGIC;
    AXI4_Lite_AWREADY : OUT STD_LOGIC;
    AXI4_Lite_WREADY : OUT STD_LOGIC;
    AXI4_Lite_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    AXI4_Lite_BVALID : OUT STD_LOGIC;
    AXI4_Lite_ARREADY : OUT STD_LOGIC;
    AXI4_Lite_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    AXI4_Lite_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    AXI4_Lite_RVALID : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : system_top_head_ip_0_0
  PORT MAP (
    IPCORE_CLK => IPCORE_CLK,
    IPCORE_RESETN => IPCORE_RESETN,
    IO => IO,
    AXI4_Lite_ACLK => AXI4_Lite_ACLK,
    AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,
    AXI4_Lite_AWADDR => AXI4_Lite_AWADDR,
    AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,
    AXI4_Lite_WDATA => AXI4_Lite_WDATA,
    AXI4_Lite_WSTRB => AXI4_Lite_WSTRB,
    AXI4_Lite_WVALID => AXI4_Lite_WVALID,
    AXI4_Lite_BREADY => AXI4_Lite_BREADY,
    AXI4_Lite_ARADDR => AXI4_Lite_ARADDR,
    AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,
    AXI4_Lite_RREADY => AXI4_Lite_RREADY,
    signals => signals,
    I0_OUT => I0_OUT,
    strob => strob,
    irq => irq,
    trans_io => trans_io,
    switch_io => switch_io,
    AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,
    AXI4_Lite_WREADY => AXI4_Lite_WREADY,
    AXI4_Lite_BRESP => AXI4_Lite_BRESP,
    AXI4_Lite_BVALID => AXI4_Lite_BVALID,
    AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,
    AXI4_Lite_RDATA => AXI4_Lite_RDATA,
    AXI4_Lite_RRESP => AXI4_Lite_RRESP,
    AXI4_Lite_RVALID => AXI4_Lite_RVALID
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file system_top_head_ip_0_0.vhd when simulating
-- the core, system_top_head_ip_0_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

