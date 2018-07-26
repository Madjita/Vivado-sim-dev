// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul  2 13:59:28 2018
// Host        : RS4230-53147 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dac_design_handmadedds_0_0_stub.v
// Design      : dac_design_handmadedds_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "handmadedds,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, doutp, doutn, IDDS, QDDS)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,doutp[15:0],doutn[15:0],IDDS[15:0],QDDS[15:0]" */;
  input clk;
  input reset;
  output [15:0]doutp;
  output [15:0]doutn;
  output [15:0]IDDS;
  output [15:0]QDDS;
endmodule
