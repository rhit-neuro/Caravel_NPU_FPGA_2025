# =============================================================================
# CARAVEL - ZedBoard Constraints
#
# Purpose:
#   - A constraint file that remaps all the physical pins from the Nexys A7
#     to the Digilent ZedBoard
#
# Checked against:
#   - Original Nexys A7 .XDC file
#
# Notes:
#   - All mprj_io physical pins are assigned here
#   - There pins were remapped to valid ZedBoard user I/O from the Digilent
#     Zedboard-Master.xdc template.
#   - The seven-segment section remains commented out because ZedBoard does not
#     provide the Nexys A7 seven-segment display interface
# =============================================================================

# =============================================================================
# Timing Constraints
# =============================================================================
create_clock -name clock100 -period 10 [get_ports {clock100}]
create_generated_clock -name clock12 clk_fix/inst/mmcm_adv_inst/CLKOUT0

# Output delays
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_clk}]
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_csb}]

# Bidirectional delays
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_io0}]
set_input_delay  5.0000 -clock clock12 -add_delay [get_ports {flash_io0}]
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {flash_io1}]
set_input_delay  5.0000 -clock clock12 -add_delay [get_ports {flash_io1}]
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {gpio}]
set_input_delay  5.0000 -clock clock12 -add_delay [get_ports {gpio}]
set_output_delay 5.0000 -clock clock12 -add_delay [get_ports {mprj_io[*]}]
set_input_delay  5.0000 -clock clock12 -add_delay [get_ports {mprj_io[*]}]

# Preserved from original XDC. Not sure what it is for
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mprj_io_IOBUF[4]_inst/O]

# =============================================================================
# Global Clock / Reset
# =============================================================================
# ZedBoard GCLK
set_property PACKAGE_PIN Y9 [get_ports {clock100}]
set_property IOSTANDARD LVCMOS33 [get_ports {clock100}]

# ZedBoard BTND
set_property PACKAGE_PIN R16 [get_ports {FPGA_rst}]
set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_rst}]

# =============================================================================
# Status / Debug Outputs
# =============================================================================
# User LEDs LD0-LD6
set_property PACKAGE_PIN T22 [get_ports {gpio}]       ;# LD0
set_property IOSTANDARD LVCMOS33 [get_ports {gpio}]
set_property PACKAGE_PIN T21 [get_ports {sck_out}]    ;# LD1
set_property IOSTANDARD LVCMOS33 [get_ports {sck_out}]
set_property PACKAGE_PIN U22 [get_ports {csb_out}]    ;# LD2
set_property IOSTANDARD LVCMOS33 [get_ports {csb_out}]
set_property PACKAGE_PIN U21 [get_ports {sdi_out}]    ;# LD3
set_property IOSTANDARD LVCMOS33 [get_ports {sdi_out}]
set_property PACKAGE_PIN V22 [get_ports {sdo_out}]    ;# LD4
set_property IOSTANDARD LVCMOS33 [get_ports {sdo_out}]
set_property PACKAGE_PIN W22 [get_ports {ser_rx_out}] ;# LD5
set_property IOSTANDARD LVCMOS33 [get_ports {ser_rx_out}]
set_property PACKAGE_PIN U19 [get_ports {ser_tx_out}] ;# LD6
set_property IOSTANDARD LVCMOS33 [get_ports {ser_tx_out}]

# =============================================================================
# External SPI Flash - PMOD JB
# =============================================================================
# Moved to JB1-JB4 so the external flash can be wired like a standalone SPI
# device on a PMOD header while keeping the Pico control path on JA1-JA4.
set_property PACKAGE_PIN W12 [get_ports {flash_clk}]  ;# JB1
set_property IOSTANDARD LVCMOS33 [get_ports {flash_clk}]
set_property PACKAGE_PIN W11 [get_ports {flash_csb}]  ;# JB2
set_property IOSTANDARD LVCMOS33 [get_ports {flash_csb}]
set_property PACKAGE_PIN V10 [get_ports {flash_io0}]  ;# JB3
set_property IOSTANDARD LVCMOS33 [get_ports {flash_io0}]
set_property PACKAGE_PIN W8  [get_ports {flash_io1}]  ;# JB4
set_property IOSTANDARD LVCMOS33 [get_ports {flash_io1}]

# =============================================================================
# mprj_io Bus - IOSTANDARD for Every Bit
# =============================================================================
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[32]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[33]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[34]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[35]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[36]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mprj_io[37]}]

# =============================================================================
# mprj_io Bus - ZedBoard Pin Mapping
# =============================================================================
# JA PMOD - Bank 13
set_property PACKAGE_PIN AB11 [get_ports {mprj_io[0]}]  ;# JA7
set_property PACKAGE_PIN Y11  [get_ports {mprj_io[17]}]  ;# JA1
set_property PACKAGE_PIN AA11 [get_ports {mprj_io[18]}]  ;# JA2
set_property PACKAGE_PIN Y10  [get_ports {mprj_io[19]}]  ;# JA3
set_property PACKAGE_PIN AA9  [get_ports {mprj_io[20]}]  ;# JA4
set_property PACKAGE_PIN AB10 [get_ports {mprj_io[5]}]  ;# JA8
set_property PACKAGE_PIN AB9  [get_ports {mprj_io[6]}]  ;# JA9
set_property PACKAGE_PIN AA8  [get_ports {mprj_io[7]}]  ;# JA10

# Rehomed mprj_io[8:11] onto former placeholder flash pins
set_property PACKAGE_PIN U14  [get_ports {mprj_io[8]}]   ;# LD7 
set_property PACKAGE_PIN U9   [get_ports {mprj_io[9]}]   ;# OLED_RES 
set_property PACKAGE_PIN AB12 [get_ports {mprj_io[10]}]  ;# OLED_SCLK 
set_property PACKAGE_PIN AA12 [get_ports {mprj_io[11]}]  ;# OLED_SDIN 

# JB PMOD - Bank 13
set_property PACKAGE_PIN V12 [get_ports {mprj_io[12]}]  ;# JB7
set_property PACKAGE_PIN W10 [get_ports {mprj_io[13]}]  ;# JB8
set_property PACKAGE_PIN V9  [get_ports {mprj_io[14]}]  ;# JB9
set_property PACKAGE_PIN V8  [get_ports {mprj_io[15]}]  ;# JB10

# JC PMOD - Bank 13
set_property PACKAGE_PIN AB6 [get_ports {mprj_io[16]}]  ;# JC1_N
set_property PACKAGE_PIN AB7 [get_ports {mprj_io[1]}]  ;# JC1_P
set_property PACKAGE_PIN AA4 [get_ports {mprj_io[2]}]  ;# JC2_N
set_property PACKAGE_PIN Y4  [get_ports {mprj_io[3]}]  ;# JC2_P
set_property PACKAGE_PIN T6  [get_ports {mprj_io[4]}]  ;# JC3_N
set_property PACKAGE_PIN R6  [get_ports {mprj_io[21]}]  ;# JC3_P
set_property PACKAGE_PIN U4  [get_ports {mprj_io[22]}]  ;# JC4_N
set_property PACKAGE_PIN T4  [get_ports {mprj_io[23]}]  ;# JC4_P

# JD PMOD - Bank 13
set_property PACKAGE_PIN W7 [get_ports {mprj_io[24]}]   ;# JD1_N
set_property PACKAGE_PIN V7 [get_ports {mprj_io[25]}]   ;# JD1_P
set_property PACKAGE_PIN V4 [get_ports {mprj_io[26]}]   ;# JD2_N
set_property PACKAGE_PIN V5 [get_ports {mprj_io[27]}]   ;# JD2_P
set_property PACKAGE_PIN W5 [get_ports {mprj_io[28]}]   ;# JD3_N
set_property PACKAGE_PIN W6 [get_ports {mprj_io[29]}]   ;# JD3_P
set_property PACKAGE_PIN U5 [get_ports {mprj_io[30]}]   ;# JD4_N
set_property PACKAGE_PIN U6 [get_ports {mprj_io[31]}]   ;# JD4_P

# Additional ZedBoard user I/O
set_property PACKAGE_PIN H15 [get_ports {mprj_io[32]}]  ;# XADC_GIO0
set_property PACKAGE_PIN R15 [get_ports {mprj_io[33]}]  ;# XADC_GIO1
set_property PACKAGE_PIN K15 [get_ports {mprj_io[34]}]  ;# XADC_GIO2
set_property PACKAGE_PIN J15 [get_ports {mprj_io[35]}]  ;# XADC_GIO3
set_property PACKAGE_PIN L16 [get_ports {mprj_io[36]}]  ;# OTG_VBUSOC
set_property PACKAGE_PIN G17 [get_ports {mprj_io[37]}]  ;# OTG_RESETN


# =============================================================================
# Old Nexys A7 Seven-Segment Signals
# =============================================================================
# ZedBoard does not have the Nexys A7 seven-segment display interface.

# set_property IOSTANDARD LVCMOS33 [get_ports {Display[7]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[6]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[5]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[4]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Display[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[7]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[6]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[5]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[4]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {Transistors[0]}]
# set_property PACKAGE_PIN H15 [get_ports {Display[7]}]
# set_property PACKAGE_PIN L18 [get_ports {Display[6]}]
# set_property PACKAGE_PIN T11 [get_ports {Display[5]}]
# set_property PACKAGE_PIN P15 [get_ports {Display[4]}]
# set_property PACKAGE_PIN K13 [get_ports {Display[3]}]
# set_property PACKAGE_PIN K16 [get_ports {Display[2]}]
# set_property PACKAGE_PIN R10 [get_ports {Display[1]}]
# set_property PACKAGE_PIN T10 [get_ports {Display[0]}]
# set_property PACKAGE_PIN U13 [get_ports {Transistors[7]}]
# set_property PACKAGE_PIN K2  [get_ports {Transistors[6]}]
# set_property PACKAGE_PIN T14 [get_ports {Transistors[5]}]
# set_property PACKAGE_PIN P14 [get_ports {Transistors[4]}]
# set_property PACKAGE_PIN J14 [get_ports {Transistors[3]}]
# set_property PACKAGE_PIN T9  [get_ports {Transistors[2]}]
# set_property PACKAGE_PIN J18 [get_ports {Transistors[1]}]
# set_property PACKAGE_PIN J17 [get_ports {Transistors[0]}]
