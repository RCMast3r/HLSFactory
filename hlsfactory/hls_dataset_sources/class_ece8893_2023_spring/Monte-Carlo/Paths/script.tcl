open_project proj

# this is your top module 
set_top optionValue

# this is your file that to be synthesized as FPGA design
add_files optionValueAverage.cpp
add_files optionValueAverage.hpp


# this is your testbench (specified by -tb option)
add_files -tb main.cpp

open_solution "solution1" -flow_target vitis

# Set board to Pynq-Z2
set_part {xc7z020clg400-1}

create_clock -period 10 -name default
config_interface -m_axi_latency 64

# synthesis
csynth_design

# Run co-simulation
#cosim_design

# Export IP to Vivado
export_design -format ip_catalog

exit