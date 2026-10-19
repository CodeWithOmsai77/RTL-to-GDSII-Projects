###############################################################################
# Created by write_sdc
###############################################################################
current_design SR_FF
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 10.0000 [get_ports {clk}]
set_input_delay 0.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {R}]
set_input_delay 0.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {S}]
set_output_delay 0.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {Q}]
set_output_delay 0.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {Qn}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
