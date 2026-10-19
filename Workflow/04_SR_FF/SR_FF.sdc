current_design SR_FF
create_clock -name core_clock -period 10.0 [get_ports clk]
set_input_delay -clock core_clock 0.0 [get_ports {S R}]
set_output_delay -clock core_clock 0.0 [get_ports {Q Qn}]
