set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN T22 [get_ports LD0]
set_property IOSTANDARD LVCMOS33 [get_ports LD0]
set_property SLEW SLOW [get_ports LD0]
set_property PACKAGE_PIN R16 [get_ports reset]
set_property IOSTANDARD LVCMOS25 [get_ports reset]

create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports -filter { NAME =~  "*clk*" && DIRECTION == "IN" }]

set_property OFFCHIP_TERM NONE [get_ports LD0]
