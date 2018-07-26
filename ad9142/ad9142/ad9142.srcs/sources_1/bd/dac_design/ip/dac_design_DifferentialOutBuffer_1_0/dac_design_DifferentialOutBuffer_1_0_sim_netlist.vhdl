-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Jun 27 09:43:53 2018
-- Host        : RS4230-53147 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top dac_design_DifferentialOutBuffer_1_0 -prefix
--               dac_design_DifferentialOutBuffer_1_0_ dac_design_DifferentialOutBuffer_2_0_sim_netlist.vhdl
-- Design      : dac_design_DifferentialOutBuffer_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_design_DifferentialOutBuffer_1_0_DifferentialOutBuffer is
  port (
    outp : out STD_LOGIC;
    outm : out STD_LOGIC;
    ins : in STD_LOGIC
  );
end dac_design_DifferentialOutBuffer_1_0_DifferentialOutBuffer;

architecture STRUCTURE of dac_design_DifferentialOutBuffer_1_0_DifferentialOutBuffer is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_inst : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of OBUFDS_inst : label is "PRIMITIVE";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => ins,
      O => outp,
      OB => outm
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dac_design_DifferentialOutBuffer_1_0 is
  port (
    ins : in STD_LOGIC;
    outp : out STD_LOGIC;
    outm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dac_design_DifferentialOutBuffer_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dac_design_DifferentialOutBuffer_1_0 : entity is "dac_design_DifferentialOutBuffer_2_0,DifferentialOutBuffer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dac_design_DifferentialOutBuffer_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dac_design_DifferentialOutBuffer_1_0 : entity is "DifferentialOutBuffer,Vivado 2018.1";
end dac_design_DifferentialOutBuffer_1_0;

architecture STRUCTURE of dac_design_DifferentialOutBuffer_1_0 is
begin
U0: entity work.dac_design_DifferentialOutBuffer_1_0_DifferentialOutBuffer
     port map (
      ins => ins,
      outm => outm,
      outp => outp
    );
end STRUCTURE;
