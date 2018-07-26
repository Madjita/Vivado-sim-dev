proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  open_checkpoint D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.runs/impl_1/system_top_wrapper.dcp
  set_property webtalk.parent_dir D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.cache/wt [current_project]
  set_property parent.project_path D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.xpr [current_project]
  set_property ip_repo_paths {
  d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.cache/ip
  D:/smartcart/smartcart/hdl_prj/ip_repo/switch_io_1.0
  D:/smartcart/smartcart/hdl_prj/vivado_ip_prj/ipcore/head_ip_v1_0
  D:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/ipcore
  D:/SMartCart/SMartCart/hdl_prj/ip_repo
} [current_project]
  set_property ip_output_repo d:/SMartCart/SMartCart/hdl_prj/vivado_ip_prj/vivado_prj.cache/ip [current_project]
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force system_top_wrapper_opt.dcp
  report_drc -file system_top_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file system_top_wrapper.hwdef}
  place_design 
  write_checkpoint -force system_top_wrapper_placed.dcp
  report_io -file system_top_wrapper_io_placed.rpt
  report_utilization -file system_top_wrapper_utilization_placed.rpt -pb system_top_wrapper_utilization_placed.pb
  report_control_sets -verbose -file system_top_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force system_top_wrapper_routed.dcp
  report_drc -file system_top_wrapper_drc_routed.rpt -pb system_top_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file system_top_wrapper_timing_summary_routed.rpt -rpx system_top_wrapper_timing_summary_routed.rpx
  report_power -file system_top_wrapper_power_routed.rpt -pb system_top_wrapper_power_summary_routed.pb
  report_route_status -file system_top_wrapper_route_status.rpt -pb system_top_wrapper_route_status.pb
  report_clock_utilization -file system_top_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force system_top_wrapper.mmi }
  write_bitstream -force system_top_wrapper.bit 
  catch { write_sysdef -hwdef system_top_wrapper.hwdef -bitfile system_top_wrapper.bit -meminfo system_top_wrapper.mmi -file system_top_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

