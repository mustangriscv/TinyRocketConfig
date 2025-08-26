# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

puts "set_db design_process_node 28" 
set_db design_process_node 28
puts "set_multi_cpu_usage -local_cpu 12" 
set_multi_cpu_usage -local_cpu 12
puts "set_db timing_analysis_cppr both" 
set_db timing_analysis_cppr both
puts "set_db timing_analysis_type ocv" 
set_db timing_analysis_type ocv
puts "read_physical -lef { /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/techlef_misc/asap7_tech_4x_201209.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_R_4x_201211.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_L_4x_201211.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SL_4x_201211.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SRAM_4x_201211.lef /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW2048x8_x4.lef /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x21_x4.lef /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef }" 
read_physical -lef { /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/techlef_misc/asap7_tech_4x_201209.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_R_4x_201211.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_L_4x_201211.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SL_4x_201211.lef /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/LEF/scaled/asap7sc7p5t_27_SRAM_4x_201211.lef /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW2048x8_x4.lef /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x21_x4.lef /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef }
puts "read_mmmc /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/mmmc.tcl" 
read_mmmc /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/mmmc.tcl
puts "read_netlist { /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/syn-rundir/ChipTop.mapped.v } -top ChipTop" 
read_netlist { /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/syn-rundir/ChipTop.mapped.v } -top ChipTop
puts "init_design" 
init_design
puts "read_power_intent -cpf /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/power_spec.cpf" 
read_power_intent -cpf /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/power_spec.cpf
puts "commit_power_intent" 
commit_power_intent
puts "set_db design_bottom_routing_layer 2" 
set_db design_bottom_routing_layer 2
puts "set_db design_top_routing_layer 7" 
set_db design_top_routing_layer 7
puts "set_db design_flow_effort standard" 
set_db design_flow_effort standard
puts "set_db design_power_effort low" 
set_db design_power_effort low

puts "set_dont_use \[get_db lib_cells */ICGx*DC*\]"
if { [get_db lib_cells */ICGx*DC*] ne "" } {
    set_dont_use [get_db lib_cells */ICGx*DC*]
} else {
    puts "WARNING: cell */ICGx*DC* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AND4x1*\]"
if { [get_db lib_cells */AND4x1*] ne "" } {
    set_dont_use [get_db lib_cells */AND4x1*]
} else {
    puts "WARNING: cell */AND4x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */SDFLx2*\]"
if { [get_db lib_cells */SDFLx2*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx2*]
} else {
    puts "WARNING: cell */SDFLx2* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AO21x1*\]"
if { [get_db lib_cells */AO21x1*] ne "" } {
    set_dont_use [get_db lib_cells */AO21x1*]
} else {
    puts "WARNING: cell */AO21x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */XOR2x2*\]"
if { [get_db lib_cells */XOR2x2*] ne "" } {
    set_dont_use [get_db lib_cells */XOR2x2*]
} else {
    puts "WARNING: cell */XOR2x2* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI31xp33*\]"
if { [get_db lib_cells */OAI31xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI31xp33*]
} else {
    puts "WARNING: cell */OAI31xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI221xp5*\]"
if { [get_db lib_cells */OAI221xp5*] ne "" } {
    set_dont_use [get_db lib_cells */OAI221xp5*]
} else {
    puts "WARNING: cell */OAI221xp5* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */SDFLx3*\]"
if { [get_db lib_cells */SDFLx3*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx3*]
} else {
    puts "WARNING: cell */SDFLx3* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */SDFLx1*\]"
if { [get_db lib_cells */SDFLx1*] ne "" } {
    set_dont_use [get_db lib_cells */SDFLx1*]
} else {
    puts "WARNING: cell */SDFLx1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AOI211xp5*\]"
if { [get_db lib_cells */AOI211xp5*] ne "" } {
    set_dont_use [get_db lib_cells */AOI211xp5*]
} else {
    puts "WARNING: cell */AOI211xp5* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI322xp33*\]"
if { [get_db lib_cells */OAI322xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI322xp33*]
} else {
    puts "WARNING: cell */OAI322xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OR2x6*\]"
if { [get_db lib_cells */OR2x6*] ne "" } {
    set_dont_use [get_db lib_cells */OR2x6*]
} else {
    puts "WARNING: cell */OR2x6* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */A2O1A1O1Ixp25*\]"
if { [get_db lib_cells */A2O1A1O1Ixp25*] ne "" } {
    set_dont_use [get_db lib_cells */A2O1A1O1Ixp25*]
} else {
    puts "WARNING: cell */A2O1A1O1Ixp25* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */XNOR2x1*\]"
if { [get_db lib_cells */XNOR2x1*] ne "" } {
    set_dont_use [get_db lib_cells */XNOR2x1*]
} else {
    puts "WARNING: cell */XNOR2x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI32xp33*\]"
if { [get_db lib_cells */OAI32xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI32xp33*]
} else {
    puts "WARNING: cell */OAI32xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */FAx1*\]"
if { [get_db lib_cells */FAx1*] ne "" } {
    set_dont_use [get_db lib_cells */FAx1*]
} else {
    puts "WARNING: cell */FAx1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI21x1*\]"
if { [get_db lib_cells */OAI21x1*] ne "" } {
    set_dont_use [get_db lib_cells */OAI21x1*]
} else {
    puts "WARNING: cell */OAI21x1* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI31xp67*\]"
if { [get_db lib_cells */OAI31xp67*] ne "" } {
    set_dont_use [get_db lib_cells */OAI31xp67*]
} else {
    puts "WARNING: cell */OAI31xp67* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */OAI33xp33*\]"
if { [get_db lib_cells */OAI33xp33*] ne "" } {
    set_dont_use [get_db lib_cells */OAI33xp33*]
} else {
    puts "WARNING: cell */OAI33xp33* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AO21x2*\]"
if { [get_db lib_cells */AO21x2*] ne "" } {
    set_dont_use [get_db lib_cells */AO21x2*]
} else {
    puts "WARNING: cell */AO21x2* was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */AOI32xp33*\]"
if { [get_db lib_cells */AOI32xp33*] ne "" } {
    set_dont_use [get_db lib_cells */AOI32xp33*]
} else {
    puts "WARNING: cell */AOI32xp33* was not found for set_dont_use"
}
            

# Ignore 1e+31 removal arcs for ASYNC DFF cells
set_db timing_analysis_async_checks no_async

# Via preferences for stripes
set_db generate_special_via_rule_preference { M7_M6widePWR1p152 M6_M5widePWR1p152 M5_M4widePWR0p864 M4_M3widePWR0p864 M3_M2widePWR0p936 }

# Prevent extending M1 pins in cells
set_db route_design_with_via_in_pin true
    
puts "write_db pre_floorplan_design" 
write_db pre_floorplan_design
puts "ln -sfn pre_floorplan_design latest" 
ln -sfn pre_floorplan_design latest
puts "source -echo -verbose /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/floorplan.tcl" 
source -echo -verbose /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/floorplan.tcl
puts "write_db pre_asap7_update_floorplan" 
write_db pre_asap7_update_floorplan
puts "ln -sfn pre_asap7_update_floorplan latest" 
ln -sfn pre_asap7_update_floorplan latest

# Need to delete and recreate tracks based on tech LEF pitches but overriding offsets
add_tracks -honor_pitch -offsets { M4 horiz 0.048 M5 vert 0.048 M6 horiz 0.064 M7 vert 0.064 }

# Create place blockage on top & bottom row, fixes wiring issue + power vias for DRC/LVS
set core_lly [get_db current_design .core_bbox.ll.y]
set core_ury [expr [get_db current_design .core_bbox.ur.y] - 1.08]
set botrow [get_db rows -if {.rect.ll.y == $core_lly}]
set toprow [get_db rows -if {.rect.ur.y > $core_ury}]
create_place_blockage -area [get_db $botrow .rect] -name ROW_BLOCK_BOT
create_place_blockage -area [get_db $toprow .rect] -name ROW_BLOCK_TOP

puts "write_db pre_dummy_step" 
write_db pre_dummy_step
puts "ln -sfn pre_dummy_step latest" 
ln -sfn pre_dummy_step latest
puts "write_db pre_place_tap_cells" 
write_db pre_place_tap_cells
puts "ln -sfn pre_place_tap_cells latest" 
ln -sfn pre_place_tap_cells latest
set_db add_well_taps_cell TAPCELL_ASAP7_75t_L
add_well_taps -cell_interval 50.0 -in_row_offset 10.564
puts "write_db pre_power_straps" 
write_db pre_power_straps
puts "ln -sfn pre_power_straps latest" 
ln -sfn pre_power_straps latest
puts "source -echo -verbose /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/power_straps.tcl" 
source -echo -verbose /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/power_straps.tcl
puts "write_db pre_place_pins" 
write_db pre_place_pins
puts "ln -sfn pre_place_pins latest" 
ln -sfn pre_place_pins latest
puts "set_db assign_pins_edit_in_batch true" 
set_db assign_pins_edit_in_batch true
set_db assign_pins_promoted_macro_bottom_layer M1
set_db assign_pins_promoted_macro_top_layer Pad
set all_ppins ""
puts "edit_pin -fixed_pin -pin * -hinst ChipTop -pattern fill_optimised -layer { M5 M7 } -side bottom -start { 800 0 } -end { 0 0 }   " 
edit_pin -fixed_pin -pin * -hinst ChipTop -pattern fill_optimised -layer { M5 M7 } -side bottom -start { 800 0 } -end { 0 0 }   
puts "if {[llength $all_ppins] ne 0} {assign_io_pins -move_fixed_pin -pins [get_db $all_ppins .net.name]}" 
if {[llength $all_ppins] ne 0} {assign_io_pins -move_fixed_pin -pins [get_db $all_ppins .net.name]}
puts "set_db assign_pins_edit_in_batch false" 
set_db assign_pins_edit_in_batch false
puts "write_db pre_place_opt_design" 
write_db pre_place_opt_design
puts "ln -sfn pre_place_opt_design latest" 
ln -sfn pre_place_opt_design latest
puts "place_opt_design" 
place_opt_design
puts "write_db pre_clock_tree" 
write_db pre_clock_tree
puts "ln -sfn pre_clock_tree latest" 
ln -sfn pre_clock_tree latest
puts "create_clock_tree_spec" 
create_clock_tree_spec
puts "ccopt_design -hold -report_dir hammer_cts_debug -report_prefix hammer_cts" 
ccopt_design -hold -report_dir hammer_cts_debug -report_prefix hammer_cts
puts "write_db pre_add_fillers" 
write_db pre_add_fillers
puts "ln -sfn pre_add_fillers latest" 
ln -sfn pre_add_fillers latest
set_db add_fillers_cells "DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx2b_ASAP7_75t_R DECAPx2b_ASAP7_75t_L DECAPx2b_ASAP7_75t_SL DECAPx2b_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM"
puts "add_fillers" 
add_fillers
set_db add_fillers_cells "FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM"
puts "add_fillers" 
add_fillers
puts "write_db pre_route_design" 
write_db pre_route_design
puts "ln -sfn pre_route_design latest" 
ln -sfn pre_route_design latest
puts "set_db design_express_route true" 
set_db design_express_route true
puts "route_design" 
route_design
puts "write_db pre_opt_design" 
write_db pre_opt_design
puts "ln -sfn pre_opt_design latest" 
ln -sfn pre_opt_design latest
puts "opt_design -post_route -setup -hold -expanded_views" 
opt_design -post_route -setup -hold -expanded_views
puts "write_db pre_write_regs" 
write_db pre_write_regs
puts "ln -sfn pre_write_regs latest" 
ln -sfn pre_write_regs latest

        set write_cells_ir "./find_regs_cells.json"
        set write_cells_ir [open $write_cells_ir "w"]
        puts $write_cells_ir "\["

        set refs [get_db [get_db lib_cells -if .is_sequential==true] .base_name]

        set len [llength $refs]

        for {set i 0} {$i < [llength $refs]} {incr i} {
            if {$i == $len - 1} {
                puts $write_cells_ir "    \"[lindex $refs $i]\""
            } else {
                puts $write_cells_ir "    \"[lindex $refs $i]\","
            }
        }

        puts $write_cells_ir "\]"
        close $write_cells_ir
        set write_regs_ir "./find_regs_paths.json"
        set write_regs_ir [open $write_regs_ir "w"]
        puts $write_regs_ir "\["

        set regs [get_db [get_db [all_registers -edge_triggered -output_pins] -if .direction==out] .name]

        set len [llength $regs]

        for {set i 0} {$i < [llength $regs]} {incr i} {
            #regsub -all {/} [lindex $regs $i] . myreg
            set myreg [lindex $regs $i]
            if {$i == $len - 1} {
                puts $write_regs_ir "    \"$myreg\""
            } else {
                puts $write_regs_ir "    \"$myreg\","
            }
        }

        puts $write_regs_ir "\]"

        close $write_regs_ir
        
puts "write_db pre_write_design" 
write_db pre_write_design
puts "ln -sfn pre_write_design latest" 
ln -sfn pre_write_design latest
puts "write_db ChipTop_FINAL -def -verilog" 
write_db ChipTop_FINAL -def -verilog
puts "set_db write_stream_virtual_connection false" 
set_db write_stream_virtual_connection false
puts "write_netlist /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.lvs.v -top_module_first -top_module ChipTop -exclude_leaf_cells -phys -flat -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM } " 
write_netlist /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.lvs.v -top_module_first -top_module ChipTop -exclude_leaf_cells -phys -flat -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM } 
puts "write_netlist /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.sim.v -top_module_first -top_module ChipTop -exclude_leaf_cells -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM } " 
write_netlist /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.sim.v -top_module_first -top_module ChipTop -exclude_leaf_cells -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM } 
puts "write_stream -mode ALL -format stream -map_file /home/adi/Desktop/tools/libs/asap7/asap7_pdk_r1p7/cdslib/asap7_TechLib/asap7_fromAPR.layermap -uniquify_cell_names -merge { /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/GDS/asap7sc7p5t_27_R_201211.gds /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/GDS/asap7sc7p5t_27_L_201211.gds /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/GDS/asap7sc7p5t_27_SL_201211.gds /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/GDS/asap7sc7p5t_27_SRAM_201211.gds /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/gds/SRAM1RW2048x8_x4.gds /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x21_x4.gds /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x32_x4.gds }  /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.gds" 
write_stream -mode ALL -format stream -map_file /home/adi/Desktop/tools/libs/asap7/asap7_pdk_r1p7/cdslib/asap7_TechLib/asap7_fromAPR.layermap -uniquify_cell_names -merge { /home/adi/Desktop/tools/libs/asap7/asap7sc7p5t_27/GDS/asap7sc7p5t_27_R_201211.gds /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/GDS/asap7sc7p5t_27_L_201211.gds /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/GDS/asap7sc7p5t_27_SL_201211.gds /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/GDS/asap7sc7p5t_27_SRAM_201211.gds /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/gds/SRAM1RW2048x8_x4.gds /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x21_x4.gds /home/adi/Desktop/tools/flows/chipyard/.conda-env/lib/python3.10/site-packages/hammer/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x32_x4.gds }  /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.gds
puts "write_sdf /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.par.sdf" 
write_sdf /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.par.sdf
puts "set_db extract_rc_coupled true" 
set_db extract_rc_coupled true
puts "extract_rc" 
extract_rc
puts "write_parasitics -spef_file /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.PVT_0P63V_100C.par.spef -rc_corner PVT_0P63V_100C.setup_rc" 
write_parasitics -spef_file /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.PVT_0P63V_100C.par.spef -rc_corner PVT_0P63V_100C.setup_rc
puts "write_parasitics -spef_file /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.PVT_0P77V_0C.par.spef -rc_corner PVT_0P77V_0C.hold_rc" 
write_parasitics -spef_file /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.PVT_0P77V_0C.par.spef -rc_corner PVT_0P77V_0C.hold_rc
puts "write_db pre_asap7_scale_final_gds" 
write_db pre_asap7_scale_final_gds
puts "ln -sfn pre_asap7_scale_final_gds latest" 
ln -sfn pre_asap7_scale_final_gds latest

# Innovus <19.1 appends some bad LD_LIBRARY_PATHS, so remove them before executing python
set env(LD_LIBRARY_PATH) [join [lsearch -not -all -inline [split $env(LD_LIBRARY_PATH) ":"] "*INNOVUS*"] ":"]
asap7_gds_scale /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/tech-asap7-cache/stdcells.txt /home/adi/Desktop/tools/flows/chipyard/vlsi/build/chipyard.harness.TestHarness.TinyRocketConfig-ChipTop/par-rundir/ChipTop.gds

puts "write_db post_asap7_scale_final_gds" 
write_db post_asap7_scale_final_gds
puts "ln -sfn post_asap7_scale_final_gds latest" 
ln -sfn post_asap7_scale_final_gds latest
puts "exit" 
exit