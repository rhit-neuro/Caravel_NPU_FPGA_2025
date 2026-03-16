create_clock -name clock100 -period 10 [get_ports {clock100}];

create_generated_clock -name clock12 clk_fix/inst/mmcm_adv_inst/CLKOUT0;

# Outputs
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_clk}];
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_csb}];

# bidirectional 
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_io0}];
set_input_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_io0}];

set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_io1}];
set_input_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_io1}];

set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {gpio}];
set_input_delay 5.0000 -clock clock12 -add_delay [get_ports {gpio}];

set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {mprj_io[*]}];
set_input_delay 5.0000 -clock clock12 -add_delay [get_ports {mprj_io[*]}];

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mprj_io_IOBUF[4]_inst/O] # TODO Dont know about this one

# Clock Pins
set_property PACKAGE_PIN Y9 [get_ports clock100]
set_property IOSTANDARD LVCMOS33 [get_ports clock100]

# No idea what kind of pins. They are attached to LEDs (random IOs)
set_property PACKAGE_PIN U14 [get_ports flash_clk]# LED7. TODO Maybe fix if broke
set_property IOSTANDARD LVCMOS33 [get_ports flash_clk]
set_property PACKAGE_PIN A1 [get_ports flash_csb] # CS
set_property IOSTANDARD LVCMOS33 [get_ports flash_csb] 
set_property PACKAGE_PIN A2 [get_ports flash_io0] # DQ0
set_property IOSTANDARD LVCMOS33 [get_ports flash_io0]
set_property PACKAGE_PIN F6 [get_ports flash_io1] # DQ1
set_property IOSTANDARD LVCMOS33 [get_ports flash_io1]

# Reset Button
set_property PACKAGE_PIN R16 [get_ports FPGA_rst]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_rst]

# LEDs
set_property PACKAGE_PIN T22 [get_ports gpio] # LED0. Flashing LED to indicate clock is running
set_property IOSTANDARD LVCMOS33 [get_ports gpio]
set_property PACKAGE_PIN T21 [get_ports sck_out] # LED1
set_property IOSTANDARD LVCMOS33 [get_ports sck_out]
set_property PACKAGE_PIN U22 [get_ports csb_out] # LED2
set_property IOSTANDARD LVCMOS33 [get_ports csb_out]
set_property PACKAGE_PIN U21 [get_ports sdi_out] # LED3
set_property IOSTANDARD LVCMOS33 [get_ports sdi_out]
set_property PACKAGE_PIN V22 [get_ports sdo_out] # LED4
set_property IOSTANDARD LVCMOS33 [get_ports sdo_out]
set_property PACKAGE_PIN W22 [get_ports ser_rx_out] #LED5
set_property IOSTANDARD LVCMOS33 [get_ports ser_rx_out]
set_property PACKAGE_PIN U19 [get_ports ser_tx_out] #LED6
set_property IOSTANDARD LVCMOS33 [get_ports ser_tx_out]

# Connectors for the PICO on the JA PMOD header
set_property PACKAGE_PIN Y11 [get_ports {mprj_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[1]}]
set_property PACKAGE_PIN AA11 [get_ports {mprj_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[2]}]
set_property PACKAGE_PIN Y10 [get_ports {mprj_io[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[3]}]
set_property PACKAGE_PIN AA9 [get_ports {mprj_io[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[4]}]

# Arbitrary output pins (set to an output but not connected to anything)
set_property PACKAGE_PIN D17 [get_ports {mprj_io[0]}] 
set_property PACKAGE_PIN D14 [get_ports {mprj_io[5]}] 
set_property PACKAGE_PIN F16 [get_ports {mprj_io[6]}] 
set_property PACKAGE_PIN G16 [get_ports {mprj_io[7]}] 
set_property PACKAGE_PIN H14 [get_ports {mprj_io[8]}] 
set_property PACKAGE_PIN E16 [get_ports {mprj_io[9]}] 
set_property PACKAGE_PIN F13 [get_ports {mprj_io[10]}]
set_property PACKAGE_PIN G13 [get_ports {mprj_io[11]}]
set_property PACKAGE_PIN H16 [get_ports {mprj_io[12]}]
set_property PACKAGE_PIN C17 [get_ports {mprj_io[13]}]
set_property PACKAGE_PIN D18 [get_ports {mprj_io[14]}]
set_property PACKAGE_PIN E18 [get_ports {mprj_io[15]}]
set_property PACKAGE_PIN G17 [get_ports {mprj_io[16]}]
set_property PACKAGE_PIN E7 [get_ports {mprj_io[17]}]
set_property PACKAGE_PIN J3 [get_ports {mprj_io[18]}]
set_property PACKAGE_PIN J4 [get_ports {mprj_io[19]}]
set_property PACKAGE_PIN E6 [get_ports {mprj_io[20]}]
set_property PACKAGE_PIN H4 [get_ports {mprj_io[21]}]
set_property PACKAGE_PIN H1 [get_ports {mprj_io[22]}]
set_property PACKAGE_PIN G1 [get_ports {mprj_io[23]}]
set_property PACKAGE_PIN G3 [get_ports {mprj_io[24]}]
set_property PACKAGE_PIN H2 [get_ports {mprj_io[25]}]
set_property PACKAGE_PIN G4 [get_ports {mprj_io[26]}]
set_property PACKAGE_PIN G2 [get_ports {mprj_io[27]}]
set_property PACKAGE_PIN F3 [get_ports {mprj_io[28]}]
set_property PACKAGE_PIN U16 [get_ports {mprj_io[32]}]
set_property PACKAGE_PIN V16 [get_ports {mprj_io[33]}]
set_property PACKAGE_PIN J15 [get_ports {mprj_io[34]}]
set_property PACKAGE_PIN T15 [get_ports {mprj_io[35]}]
set_property PACKAGE_PIN U14 [get_ports {mprj_io[36]}]
set_property PACKAGE_PIN T16 [get_ports {mprj_io[37]}]
set_property PACKAGE_PIN V15 [get_ports {mprj_io[31]}]
set_property PACKAGE_PIN V14 [get_ports {mprj_io[30]}]
set_property PACKAGE_PIN V12 [get_ports {mprj_io[29]}]

set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[37]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[36]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[35]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[34]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[33]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[32]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[0]}]

# 7 Segment Display Pins Below (not needed for ZedBoard
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Display[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[0]}]
#set_property PACKAGE_PIN H15 [get_ports {Display[7]}]
#set_property PACKAGE_PIN L18 [get_ports {Display[6]}]
#set_property PACKAGE_PIN T11 [get_ports {Display[5]}]
#set_property PACKAGE_PIN P15 [get_ports {Display[4]}]
#set_property PACKAGE_PIN K13 [get_ports {Display[3]}]
#set_property PACKAGE_PIN K16 [get_ports {Display[2]}]
#set_property PACKAGE_PIN R10 [get_ports {Display[1]}]
#set_property PACKAGE_PIN T10 [get_ports {Display[0]}]
#set_property PACKAGE_PIN U13 [get_ports {Transistors[7]}]
#set_property PACKAGE_PIN K2 [get_ports {Transistors[6]}]
#set_property PACKAGE_PIN T14 [get_ports {Transistors[5]}]
#set_property PACKAGE_PIN P14 [get_ports {Transistors[4]}]
#set_property PACKAGE_PIN J14 [get_ports {Transistors[3]}]
#set_property PACKAGE_PIN T9 [get_ports {Transistors[2]}]
#set_property PACKAGE_PIN J18 [get_ports {Transistors[1]}]
#set_property PACKAGE_PIN J17 [get_ports {Transistors[0]}]