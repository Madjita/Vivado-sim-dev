-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Jun 27 09:43:53 2018
-- Host        : RS4230-53147 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dac_design_DifferentialOutBuffer_1_0 -prefix
--               dac_design_DifferentialOutBuffer_1_0_ dac_design_DifferentialOutBuffer_2_0_stub.vhdl
-- Design      : dac_design_DifferentialOutBuffer_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_design_DifferentialOutBuffer_1_0 is
  Port ( 
    ins : in STD_LOGIC;
    outp : out STD_LOGIC;
    outm : out STD_LOGIC
  );

end dac_design_DifferentialOutBuffer_1_0;

architecture stub of dac_design_DifferentialOutBuffer_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ins,outp,outm";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DifferentialOutBuffer,Vivado 2018.1";
begin
end;
