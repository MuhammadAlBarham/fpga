
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Test1 -dir "D:/New folder/Summer Semester/1. FPGA/ISE Projects/Project 1/Test1/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "adder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top adder $srcset
add_files [list {adder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
