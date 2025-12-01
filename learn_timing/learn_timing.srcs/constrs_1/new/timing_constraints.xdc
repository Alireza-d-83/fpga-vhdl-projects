create_clock -period 20.000 [get_ports clk]
set_input_delay -clock clk 2.000 [get_ports d_in]
set_output_delay -clock clk 2.000 [get_ports q_out]

set_input_delay -clock [get_clocks clk] -min -add_delay 2.000 [get_ports rst]
set_input_delay -clock [get_clocks clk] -max -add_delay 2.000 [get_ports rst]
