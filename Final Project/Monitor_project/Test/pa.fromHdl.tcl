
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Test -dir "C:/Users/Phantom/Desktop/Mointor_test_with_Zeina/Test/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "monitor_color_generator.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Rotary_Filter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rotary_direction.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {monitor_color_generator.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top monitor_color_generator $srcset
add_files [list {monitor_color_generator.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
