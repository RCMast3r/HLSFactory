open_project -reset hls_prj
set_top kernel_seidel_2d
add_files src/seidel-2d.cpp
add_files src/seidel-2d.h
open_solution -reset solution
set_part xczu9eg-ffvb1156-2-i
create_clock -period 10 -name default
source opt.tcl
csynth_design
close_project
