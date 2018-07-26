-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_checker_v2_0_2 -sv \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_2 -sv \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_4 -sv \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_processing_system7_0_0/sim/dac_design_processing_system7_0_0.v" \
  "../../../bd/dac_design/ip/dac_design_clk_wiz_0_0/dac_design_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/dac_design/ip/dac_design_clk_wiz_0_0/dac_design_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ipshared/55bf/src/handmadedds_pkg.vhd" \
  "../../../bd/dac_design/ipshared/55bf/src/LookUpTableGen.vhd" \
  "../../../bd/dac_design/ipshared/55bf/src/WaveformGen.vhd" \
  "../../../bd/dac_design/ipshared/55bf/src/NCO_HDL_Optimized.vhd" \
  "../../../bd/dac_design/ipshared/55bf/src/handmadedds_block.vhd" \
  "../../../bd/dac_design/ipshared/55bf/src/handmadedds.vhd" \
  "../../../bd/dac_design/ip/dac_design_handmadedds_0_0/sim/dac_design_handmadedds_0_0.vhd" \
  "../../../bd/dac_design/ipshared/faf6/hdl/DifferentialOutBuffer.vhd" \
  "../../../bd/dac_design/ip/dac_design_DifferentialOutBuffer_0_0/sim/dac_design_DifferentialOutBuffer_0_0.vhd" \
  "../../../bd/dac_design/ip/dac_design_DifferentialOutBuffer_1_0/sim/dac_design_DifferentialOutBuffer_1_0.vhd" \
  "../../../bd/dac_design/ip/dac_design_ila_0_0/sim/dac_design_ila_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_4 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/2fc9/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_xlconstant_0_0/sim/dac_design_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_DifferentialOutBuffer_2_0/sim/dac_design_DifferentialOutBuffer_2_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_xlconstant_1_0/sim/dac_design_xlconstant_1_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/sim/dac_design.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_xlconstant_2_0/sim/dac_design_xlconstant_2_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_18 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/fbf9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_axi_gpio_0_0/sim/dac_design_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_rst_ps7_0_100M_0/sim/dac_design_rst_ps7_0_100M_0.vhd" \
  "../../../bd/dac_design/ipshared/2af1/hdl/tribuffer_v1_0.vhd" \
  "../../../bd/dac_design/ip/dac_design_tribuffer_0_0/sim/dac_design_tribuffer_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_15 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_16 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_16 \
  "../../../../ad9142.srcs/sources_1/bd/dac_design/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dac_design/ip/dac_design_auto_pc_0/sim/dac_design_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

