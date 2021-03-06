# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/lucas/OneDrive/PhD/VHDL tutorial/simulation_and/simulation_and.cache/wt} [current_project]
set_property parent.project_path {C:/Users/lucas/OneDrive/PhD/VHDL tutorial/simulation_and/simulation_and.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo {c:/Users/lucas/OneDrive/PhD/VHDL tutorial/simulation_and/simulation_and.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {{C:/Users/lucas/OneDrive/PhD/VHDL tutorial/simulation_and/simulation_and.srcs/sources_1/new/AND_GATE.vhd}}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top AND_GATE -part xc7a100tcsg324-1


write_checkpoint -force -noxdef AND_GATE.dcp

catch { report_utilization -file AND_GATE_utilization_synth.rpt -pb AND_GATE_utilization_synth.pb }
