current_design Dff
create_clock -name core_clock -period 10.0 [get_ports clk]
set_input_delay -clock core_clock 0.0 [get_ports D]
set_output_delay -clock core_clock 0.0 [get_ports Q]
