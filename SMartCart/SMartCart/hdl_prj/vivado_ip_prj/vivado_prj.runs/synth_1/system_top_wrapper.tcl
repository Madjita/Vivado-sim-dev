# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.cache/wt [current_project]
set_property parent.project_path D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
set_property ip_repo_paths {
  d:/smartcart/smartcart/hdl_prj/ip_repo/switch_io_1.0
  d:/smartcart/smartcart/hdl_prj/vivado_ip_prj/ipcore/head_ip_v1_0
  d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/ipcore
  d:/SMartCart/SMartCart/hdl_prj/ip_repo
} [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/system_top.bd
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_0_0/system_top_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_0_0/system_top_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_clk_wiz_0_0/system_top_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_0_0/system_top_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_0_0/system_top_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_proc_sys_reset_0_0/system_top_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_processing_system7_0_0/system_top_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_xbar_0/system_top_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/ip/system_top_auto_pc_0/system_top_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/system_top_ooc.xdc]
set_property is_locked true [get_files D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/system_top.bd]

read_vhdl -library xil_defaultlib D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.srcs/sources_1/bd/system_top/hdl/system_top_wrapper.vhd
read_xdc D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/head_ip_src_head_top.xdc
set_property used_in_implementation false [get_files D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/head_ip_src_head_top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top system_top_wrapper -part xc7z020clg484-1
write_checkpoint -noxdef system_top_wrapper.dcp
catch { report_utilization -file system_top_wrapper_utilization_synth.rpt -pb system_top_wrapper_utilization_synth.pb }
