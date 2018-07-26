// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:head_ip:1.0
// IP Revision: 1607281141

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
system_top_head_ip_1_0 your_instance_name (
  .IPCORE_CLK(IPCORE_CLK),                // input wire IPCORE_CLK
  .IPCORE_RESETN(IPCORE_RESETN),          // input wire IPCORE_RESETN
  .IO(IO),                                // input wire IO
  .AXI4_Lite_ACLK(AXI4_Lite_ACLK),        // input wire AXI4_Lite_ACLK
  .AXI4_Lite_ARESETN(AXI4_Lite_ARESETN),  // input wire AXI4_Lite_ARESETN
  .AXI4_Lite_AWADDR(AXI4_Lite_AWADDR),    // input wire [15 : 0] AXI4_Lite_AWADDR
  .AXI4_Lite_AWVALID(AXI4_Lite_AWVALID),  // input wire AXI4_Lite_AWVALID
  .AXI4_Lite_WDATA(AXI4_Lite_WDATA),      // input wire [31 : 0] AXI4_Lite_WDATA
  .AXI4_Lite_WSTRB(AXI4_Lite_WSTRB),      // input wire [3 : 0] AXI4_Lite_WSTRB
  .AXI4_Lite_WVALID(AXI4_Lite_WVALID),    // input wire AXI4_Lite_WVALID
  .AXI4_Lite_BREADY(AXI4_Lite_BREADY),    // input wire AXI4_Lite_BREADY
  .AXI4_Lite_ARADDR(AXI4_Lite_ARADDR),    // input wire [15 : 0] AXI4_Lite_ARADDR
  .AXI4_Lite_ARVALID(AXI4_Lite_ARVALID),  // input wire AXI4_Lite_ARVALID
  .AXI4_Lite_RREADY(AXI4_Lite_RREADY),    // input wire AXI4_Lite_RREADY
  .signals(signals),                      // output wire [2 : 0] signals
  .I0_OUT(I0_OUT),                        // output wire I0_OUT
  .strob(strob),                          // output wire strob
  .irq(irq),                              // output wire irq
  .trans_io(trans_io),                    // output wire trans_io
  .switch_io(switch_io),                  // output wire switch_io
  .AXI4_Lite_AWREADY(AXI4_Lite_AWREADY),  // output wire AXI4_Lite_AWREADY
  .AXI4_Lite_WREADY(AXI4_Lite_WREADY),    // output wire AXI4_Lite_WREADY
  .AXI4_Lite_BRESP(AXI4_Lite_BRESP),      // output wire [1 : 0] AXI4_Lite_BRESP
  .AXI4_Lite_BVALID(AXI4_Lite_BVALID),    // output wire AXI4_Lite_BVALID
  .AXI4_Lite_ARREADY(AXI4_Lite_ARREADY),  // output wire AXI4_Lite_ARREADY
  .AXI4_Lite_RDATA(AXI4_Lite_RDATA),      // output wire [31 : 0] AXI4_Lite_RDATA
  .AXI4_Lite_RRESP(AXI4_Lite_RRESP),      // output wire [1 : 0] AXI4_Lite_RRESP
  .AXI4_Lite_RVALID(AXI4_Lite_RVALID)    // output wire AXI4_Lite_RVALID
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file system_top_head_ip_1_0.v when simulating
// the core, system_top_head_ip_1_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

