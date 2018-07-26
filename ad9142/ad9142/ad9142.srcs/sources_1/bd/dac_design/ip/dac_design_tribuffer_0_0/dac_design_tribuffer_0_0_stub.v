// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul  2 14:37:37 2018
// Host        : RS4230-53147 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Kharitonov_AY/WORKSPACE/dac/ad9142/ad9142/ad9142.srcs/sources_1/bd/dac_design/ip/dac_design_tribuffer_0_0/dac_design_tribuffer_0_0_stub.v
// Design      : dac_design_tribuffer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "tribuffer,Vivado 2018.1" *)
module dac_design_tribuffer_0_0(data_out, data_io, data_in, data_cnt)
/* synthesis syn_black_box black_box_pad_pin="data_out,data_io,data_in,data_cnt" */;
  output data_out;
  inout data_io;
  input data_in;
  input data_cnt;
endmodule
