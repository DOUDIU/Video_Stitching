create_clock -period 13.468 -name vin_clk -waveform {0.000 6.734} [get_ports vin_clk]

set_property PACKAGE_PIN AB11 [get_ports vin_clk]
set_property PACKAGE_PIN Y14 [get_ports {vin_data[0]}]
set_property PACKAGE_PIN Y13 [get_ports {vin_data[1]}]
set_property PACKAGE_PIN AB13 [get_ports {vin_data[2]}]
set_property PACKAGE_PIN AC12 [get_ports {vin_data[3]}]
set_property PACKAGE_PIN AC14 [get_ports {vin_data[4]}]
set_property PACKAGE_PIN AC13 [get_ports {vin_data[5]}]
set_property PACKAGE_PIN AD12 [get_ports {vin_data[6]}]
set_property PACKAGE_PIN AD11 [get_ports {vin_data[7]}]
set_property PACKAGE_PIN AD15 [get_ports {vin_data[8]}]
set_property PACKAGE_PIN AD14 [get_ports {vin_data[9]}]
set_property PACKAGE_PIN AG13 [get_ports {vin_data[10]}]
set_property PACKAGE_PIN AH13 [get_ports {vin_data[11]}]
set_property PACKAGE_PIN AB9 [get_ports {vin_data[12]}]
set_property PACKAGE_PIN AB10 [get_ports {vin_data[13]}]
set_property PACKAGE_PIN Y10 [get_ports {vin_data[14]}]
set_property PACKAGE_PIN W10 [get_ports {vin_data[15]}]
set_property PACKAGE_PIN W11 [get_ports {vin_data[16]}]
set_property PACKAGE_PIN W12 [get_ports {vin_data[17]}]
set_property PACKAGE_PIN W13 [get_ports {vin_data[18]}]
set_property PACKAGE_PIN W14 [get_ports {vin_data[19]}]
set_property PACKAGE_PIN AB15 [get_ports {vin_data[20]}]
set_property PACKAGE_PIN AB14 [get_ports {vin_data[21]}]
set_property PACKAGE_PIN AG11 [get_ports {vin_data[22]}]
set_property PACKAGE_PIN AF11 [get_ports {vin_data[23]}]
set_property PACKAGE_PIN AA13 [get_ports vin_de]
set_property PACKAGE_PIN AA12 [get_ports vin_hs]
set_property PACKAGE_PIN AD10 [get_ports vin_nreset]
set_property PACKAGE_PIN Y12 [get_ports vin_vs]


set_property PACKAGE_PIN AF12 [get_ports vin_scl]
set_property PACKAGE_PIN AE12 [get_ports vin_sda]

set_property IOSTANDARD LVCMOS33 [get_ports vin_scl]
set_property IOSTANDARD LVCMOS33 [get_ports vin_sda]


set_property PULLUP true [get_ports vin_scl]
set_property PULLUP true [get_ports vin_sda]


#set_property PACKAGE_PIN F10   [get_ports edid_scl]
#set_property PACKAGE_PIN G11   [get_ports edid_sda]
set_property PACKAGE_PIN E8 [get_ports hpd]

#set_property IOSTANDARD LVCMOS33 [get_ports edid_scl]
#set_property IOSTANDARD LVCMOS33 [get_ports edid_sda]
set_property IOSTANDARD LVCMOS18 [get_ports hpd]

set_property IOSTANDARD LVCMOS33 [get_ports vin_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {vin_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports vin_de]
set_property IOSTANDARD LVCMOS33 [get_ports vin_hs]
set_property IOSTANDARD LVCMOS33 [get_ports vin_vs]
set_property IOSTANDARD LVCMOS33 [get_ports vin_nreset]



set_property IOB TRUE [get_ports {vin_data[*]}]
set_property IOB TRUE [get_ports vin_de]
set_property IOB TRUE [get_ports vin_hs]
set_property IOB TRUE [get_ports vin_vs]


set_input_delay -clock [get_clocks vin_clk] -min -add_delay 2.500 [get_ports {vin_data[*]}]
set_input_delay -clock [get_clocks vin_clk] -max -add_delay 3.500 [get_ports {vin_data[*]}]
set_input_delay -clock [get_clocks vin_clk] -min -add_delay 2.500 [get_ports vin_de]
set_input_delay -clock [get_clocks vin_clk] -max -add_delay 3.500 [get_ports vin_de]
set_input_delay -clock [get_clocks vin_clk] -min -add_delay 2.500 [get_ports vin_hs]
set_input_delay -clock [get_clocks vin_clk] -max -add_delay 3.500 [get_ports vin_hs]
set_input_delay -clock [get_clocks vin_clk] -min -add_delay 2.500 [get_ports vin_vs]
set_input_delay -clock [get_clocks vin_clk] -max -add_delay 3.500 [get_ports vin_vs]


