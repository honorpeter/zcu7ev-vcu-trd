# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param power.enableLutRouteBelPower 1
set_param power.enableCarry8RouteBelPower 1
set_param power.enableUnconnectedCarry8PinPower 1
set_param power.BramSDPPropagationFix 1
set_msg_config  -ruleid {10}  -id {[BD 41-1271]}  -suppress 
set_msg_config  -ruleid {9}  -id {[BD 41-1306]}  -suppress 
create_project -in_memory -part xczu7ev-fbvb900-1-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/brainiarc7/designs/vcu_trd/vcu_trd.cache/wt [current_project]
set_property parent.project_path /home/brainiarc7/designs/vcu_trd/vcu_trd.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/brainiarc7/designs/vcu_trd/vcu_trd.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/hdl/vcu_trd_wrapper.v
add_files /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/vcu_trd.bd
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_0_1/constraints/vcu.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_0_1/vcu_trd_vcu_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_proc_sys_reset_vcu_0_1/vcu_trd_proc_sys_reset_vcu_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_proc_sys_reset_vcu_0_1/vcu_trd_proc_sys_reset_vcu_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_proc_sys_reset_vcu_0_1/vcu_trd_proc_sys_reset_vcu_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_proc_sys_reset_vcu_1_1/vcu_trd_proc_sys_reset_vcu_1_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_proc_sys_reset_vcu_1_1/vcu_trd_proc_sys_reset_vcu_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_proc_sys_reset_vcu_1_1/vcu_trd_proc_sys_reset_vcu_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_enc0_reg_slice_1/vcu_trd_vcu_enc0_reg_slice_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_enc0_reg_slice_1/vcu_trd_vcu_enc0_reg_slice_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_enc1_reg_slice_1/vcu_trd_vcu_enc1_reg_slice_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_enc1_reg_slice_1/vcu_trd_vcu_enc1_reg_slice_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_dec0_reg_slice_1/vcu_trd_vcu_dec0_reg_slice_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_dec0_reg_slice_1/vcu_trd_vcu_dec0_reg_slice_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_dec1_reg_slice_1/vcu_trd_vcu_dec1_reg_slice_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_dec1_reg_slice_1/vcu_trd_vcu_dec1_reg_slice_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_mcu_reg_slice_1/vcu_trd_vcu_mcu_reg_slice_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_mcu_reg_slice_1/vcu_trd_vcu_mcu_reg_slice_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_clk_wiz0_1/vcu_trd_vcu_clk_wiz0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_clk_wiz0_1/vcu_trd_vcu_clk_wiz0_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_vcu_clk_wiz0_1/vcu_trd_vcu_clk_wiz0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_zynq_ultra_ps_e_0_1/vcu_trd_zynq_ultra_ps_e_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_zynq_ultra_ps_e_0_1/vcu_trd_zynq_ultra_ps_e_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_gig_ethernet_pcs_pma_0_1/ip_0/synth/vcu_trd_gig_ethernet_pcs_pma_0_1_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_gig_ethernet_pcs_pma_0_1/ip_0/synth/vcu_trd_gig_ethernet_pcs_pma_0_1_gt.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_gig_ethernet_pcs_pma_0_1/vcu_trd_gig_ethernet_pcs_pma_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_gig_ethernet_pcs_pma_0_1/synth/vcu_trd_gig_ethernet_pcs_pma_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_gig_ethernet_pcs_pma_0_1/synth/vcu_trd_gig_ethernet_pcs_pma_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_gig_ethernet_pcs_pma_0_1/synth/vcu_trd_gig_ethernet_pcs_pma_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_1/vcu_trd_clk_wiz_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_1/vcu_trd_clk_wiz_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_1/vcu_trd_clk_wiz_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_1_1/vcu_trd_clk_wiz_1_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_1_1/vcu_trd_clk_wiz_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_1_1/vcu_trd_clk_wiz_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_2_1/vcu_trd_clk_wiz_2_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_2_1/vcu_trd_clk_wiz_2_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_2_1/vcu_trd_clk_wiz_2_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_3_1/vcu_trd_clk_wiz_3_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_3_1/vcu_trd_clk_wiz_3_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_3_1/vcu_trd_clk_wiz_3_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_4_1/vcu_trd_clk_wiz_4_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_4_1/vcu_trd_clk_wiz_4_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_4_1/vcu_trd_clk_wiz_4_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/ip/ip_0/bd_22f3_v_smpte_uhdsdi_rx_0_core.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/ip/ip_0/bd_22f3_v_smpte_uhdsdi_rx_0_clock.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/ip/ip_0/bd_22f3_v_smpte_uhdsdi_rx_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/ip/ip_1/bd_22f3_v_sdi_rx_vid_bridge_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/ip/ip_2/bd_22f3_v_vid_in_axi4s_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/ip/ip_2/bd_22f3_v_vid_in_axi4s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/bd_0/bd_22f3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0/vcu_trd_v_smpte_uhdsdi_rx_ss_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_0/bd_82d8_axi_crossbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_1/bd_82d8_v_smpte_uhdsdi_tx_0_core.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_1/bd_82d8_v_smpte_uhdsdi_tx_0_clock.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_1/bd_82d8_v_smpte_uhdsdi_tx_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_2/bd_82d8_v_vid_sdi_tx_bridge_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_3/bd_82d8_v_axi4s_vid_out_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_3/bd_82d8_v_axi4s_vid_out_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_4/bd_82d8_v_tc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/ip/ip_4/bd_82d8_v_tc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/bd_0/bd_82d8_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0/vcu_trd_v_smpte_uhdsdi_tx_ss_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_0_1/vcu_trd_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_0_1/vcu_trd_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_clk_wiz_0_1/vcu_trd_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_xbar_1/vcu_trd_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/ip/vcu_trd_auto_pc_0/vcu_trd_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/sources_1/bd/vcu_trd/vcu_trd_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/constrs_1/imports/Xilinx/UltraZed-EV-CC-Master-XDC.xdc
set_property used_in_implementation false [get_files /home/brainiarc7/designs/vcu_trd/vcu_trd.srcs/constrs_1/imports/Xilinx/UltraZed-EV-CC-Master-XDC.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top vcu_trd_wrapper -part xczu7ev-fbvb900-1-i


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef vcu_trd_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file vcu_trd_wrapper_utilization_synth.rpt -pb vcu_trd_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]