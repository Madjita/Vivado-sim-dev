--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Fri Jul 13 11:11:01 2018
--Host        : all running 64-bit major release  (build 9200)
--Command     : generate_target dac_design_wrapper.bd
--Design      : dac_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_design_wrapper is
  port (
    DAC_CLKM : out STD_LOGIC;
    DAC_CLKP : out STD_LOGIC;
    DAC_DCIM : out STD_LOGIC;
    DAC_DCIP : out STD_LOGIC;
    DAC_DM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DAC_DP : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DAC_FRAMEM : out STD_LOGIC;
    DAC_FRAMEP : out STD_LOGIC;
    DAC_RESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    DAC_TXEN : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    SPI_CLK : out STD_LOGIC;
    SPI_DATA : inout STD_LOGIC;
    SPI_EN : out STD_LOGIC
  );
end dac_design_wrapper;

architecture STRUCTURE of dac_design_wrapper is
  component dac_design is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DAC_CLKP : out STD_LOGIC;
    DAC_CLKM : out STD_LOGIC;
    DAC_DCIP : out STD_LOGIC;
    DAC_DCIM : out STD_LOGIC;
    DAC_DP : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DAC_DM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DAC_FRAMEP : out STD_LOGIC;
    DAC_FRAMEM : out STD_LOGIC;
    SPI_CLK : out STD_LOGIC;
    SPI_EN : out STD_LOGIC;
    SPI_DATA : inout STD_LOGIC;
    DAC_RESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    DAC_TXEN : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component dac_design;
begin
dac_design_i: component dac_design
     port map (
      DAC_CLKM => DAC_CLKM,
      DAC_CLKP => DAC_CLKP,
      DAC_DCIM => DAC_DCIM,
      DAC_DCIP => DAC_DCIP,
      DAC_DM(15 downto 0) => DAC_DM(15 downto 0),
      DAC_DP(15 downto 0) => DAC_DP(15 downto 0),
      DAC_FRAMEM => DAC_FRAMEM,
      DAC_FRAMEP => DAC_FRAMEP,
      DAC_RESET(0) => DAC_RESET(0),
      DAC_TXEN(0) => DAC_TXEN(0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      SPI_CLK => SPI_CLK,
      SPI_DATA => SPI_DATA,
      SPI_EN => SPI_EN
    );
end STRUCTURE;
