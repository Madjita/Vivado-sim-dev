// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 27 09:43:53 2018
// Host        : RS4230-53147 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dac_design_DifferentialOutBuffer_0_0 -prefix
//               dac_design_DifferentialOutBuffer_0_0_ dac_design_DifferentialOutBuffer_2_0_stub.v
// Design      : dac_design_DifferentialOutBuffer_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DifferentialOutBuffer,Vivado 2018.1" *)
module dac_design_DifferentialOutBuffer_0_0(ins, outp, outm)
/* synthesis syn_black_box black_box_pad_pin="ins,outp,outm" */;
  input ins;
  output outp;
  output outm;
endmodule
