-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jul  2 14:37:37 2018
-- Host        : RS4230-53147 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Kharitonov_AY/WORKSPACE/dac/ad9142/ad9142/ad9142.srcs/sources_1/bd/dac_design/ip/dac_design_tribuffer_0_0/dac_design_tribuffer_0_0_stub.vhdl
-- Design      : dac_design_tribuffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_design_tribuffer_0_0 is
  Port ( 
    data_out : out STD_LOGIC;
    data_io : inout STD_LOGIC;
    data_in : in STD_LOGIC;
    data_cnt : in STD_LOGIC
  );

end dac_design_tribuffer_0_0;

architecture stub of dac_design_tribuffer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_out,data_io,data_in,data_cnt";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "tribuffer,Vivado 2018.1";
begin
end;
