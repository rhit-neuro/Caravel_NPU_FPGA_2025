 `ifdef SIM
 `default_nettype wire
 `endif
// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
 `include "user_defines.v"

`define FPGA

`ifndef FPGA
`default_nettype none
`else
`default_nettype wire
`endif
// limitations under the License.

// SPDX-License-Identifier: Apache-2.0

/*--------------------------------------------------------------*/
/* caravel, a project harness for the Google/SkyWater sky130	*/
/* fabrication process and open source PDK			*/
/*                                                          	*/
/* Copyright 2020 efabless, Inc.                            	*/
/* Written by Tim Edwards, December 2019                    	*/
/* and Mohamed Shalan, August 2020			    	*/
/* This file is open source hardware released under the     	*/
/* Apache 2.0 license.  See file LICENSE.                   	*/
/*								*/
/* Updated 10/15/2021:  Revised using the housekeeping module	*/
/* from housekeeping.v (refactoring a number of functions from	*/
/* the management SoC).						*/
/*                                                          	*/
/*--------------------------------------------------------------*/

module caravel_core (
    // All top-level I/O are package-facing pins
`ifdef USE_POWER_PINS
    inout vddio,  // Common 3.3V padframe/ESD power
    inout vssio,  // Common padframe/ESD ground
    inout vdda,   // Management 3.3V power
    inout vssa,   // Common analog ground
    inout vccd,   // Management/Common 1.8V power
    inout vssd,   // Common digital ground
    inout vdda1,  // User area 1 3.3V power
    inout vdda2,  // User area 2 3.3V power
    inout vssa1,  // User area 1 analog ground
    inout vssa2,  // User area 2 analog ground
    inout vccd1,  // User area 1 1.8V power
    inout vccd2,  // User area 2 1.8V power
    inout vssd1,  // User area 1 digital ground
    inout vssd2,  // User area 2 digital ground	
`endif

    // SoC Core Interface
    output porb_h,
    output por_l,
    input  rstb_h,
    input  clock_core,
    output gpio_out_core,
    input  gpio_in_core,
    output gpio_mode0_core,
    output gpio_mode1_core,
    output gpio_outenb_core,
    output gpio_inenb_core,

    // Flash SPI communication
    output flash_csb_frame,
    output flash_clk_frame,
    output flash_csb_oeb,
    output flash_clk_oeb,
    output flash_io0_oeb,
    output flash_io1_oeb,
    output flash_io0_ieb,
    output flash_io1_ieb,
    output flash_io0_do,
    output flash_io1_do,
    input  flash_io0_di,
    input  flash_io1_di,

    // User project IOs
    input  [  `MPRJ_IO_PADS-1:0] mprj_io_in,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_out,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_oeb,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_inp_dis,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_ib_mode_sel,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_vtrip_sel,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_slow_sel,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_holdover,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_analog_en,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_analog_sel,
    output [  `MPRJ_IO_PADS-1:0] mprj_io_analog_pol,
    output [`MPRJ_IO_PADS*3-1:0] mprj_io_dm,

    // Loopbacks to constant value 1 in the 1.8V domain
    output [`MPRJ_IO_PADS-1:0] mprj_io_one,

    // User project direct access to gpio pad connections for analog
    // (all but the lowest-numbered 7 pads)
    inout [`MPRJ_IO_PADS-10:0] mprj_analog_io,
    
    //CUSTOM DATA FOR 7 SEG DISPLAY **NOT CARAVEL**
    output [31:0] SevenSegDisplay
);

    //------------------------------------------------------------
    // This value is uniquely defined for each user project.
    //------------------------------------------------------------
    parameter USER_PROJECT_ID = 32'h00000000;

    /*
     *--------------------------------------------------------------------
     *
     * These pins are overlaid on mprj_io space.  They have the function
     * below when the management processor is in reset, or in the default
     * configuration.  They are assigned to uses in the user space by the
     * configuration program running off of the SPI flash.  Note that even
     * when the user has taken control of these pins, they can be restored
     * to the original use by setting the resetb pin low.  The SPI pins and
     * UART pins can be connected directly to an FTDI chip as long as the
     * FTDI chip sets these lines to high impedence (input function) at
     * all times except when holding the chip in reset.
     *
     * JTAG       = mprj_io[0]		(inout)
     * SDO 	  = mprj_io[1]		(output)
     * SDI 	  = mprj_io[2]		(input)
     * CSB 	  = mprj_io[3]		(input)
     * SCK	  = mprj_io[4]		(input)
     * ser_rx     = mprj_io[5]		(input)
     * ser_tx     = mprj_io[6]		(output)
     * irq 	  = mprj_io[7]		(input)
     *
     * spi_sck    = mprj_io[32]		(output)
     * spi_csb    = mprj_io[33]		(output)
     * spi_sdi    = mprj_io[34]		(input)
     * spi_sdo    = mprj_io[35]		(output)
     * flash_io2  = mprj_io[36]		(inout) 
     * flash_io3  = mprj_io[37]		(inout) 
     *
     * These pins are reserved for any project that wants to incorporate
     * its own processor and flash controller.  While a user project can
     * technically use any available I/O pins for the purpose, these
     * four pins connect to a pass-through mode from the SPI slave (pins
     * 1-4 above) so that any SPI flash connected to these specific pins
     * can be accessed through the SPI slave even when the processor is in
     * reset.
     *
     * user_flash_csb = mprj_io[8]
     * user_flash_sck = mprj_io[9]
     * user_flash_io0 = mprj_io[10]
     * user_flash_io1 = mprj_io[11]
     *
     *--------------------------------------------------------------------
     */


    // User Project Control (user-facing)
    wire [`MPRJ_IO_PADS-1:0] user_io_oeb;
    wire [`MPRJ_IO_PADS-1:0] user_io_in;
    wire [`MPRJ_IO_PADS-1:0] user_io_out;

    /* Padframe control signals */
    wire [`MPRJ_IO_PADS_1-1:0] gpio_serial_link_1;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_serial_link_2;
    wire mprj_io_loader_resetn;
    wire mprj_io_loader_clock;
    wire mprj_io_loader_strobe;
    wire mprj_io_loader_data_1;		/* user1 side serial loader */
    wire mprj_io_loader_data_2;		/* user2 side serial loader */

    // User Project Control management I/O
    // There are two types of GPIO connections:
    // (1) Full Bidirectional: Management connects to in, out, and oeb
    //     Uses:  JTAG and SDO
    // (2) Selectable bidirectional:  Management connects to in and out,
    //	   which are tied together.  oeb is grounded (oeb from the
    //	   configuration is used)

    // SDI 	 = mprj_io[2]		(input)
    // CSB 	 = mprj_io[3]		(input)
    // SCK	 = mprj_io[4]		(input)
    // ser_rx    = mprj_io[5]		(input)
    // ser_tx    = mprj_io[6]		(output)
    // irq 	 = mprj_io[7]		(input)

    wire [`MPRJ_IO_PADS-1:0] mgmt_io_in;	/* two- and three-pin data in	*/
    wire [`MPRJ_IO_PADS-1:0] mgmt_io_out;	/* two- and three-pin data out	*/
    wire [`MPRJ_IO_PADS-1:0] mgmt_io_oeb;	/* output enable, used only by	*/
						/* the three-pin interfaces	*/
    wire [`MPRJ_PWR_PADS-1:0] pwr_ctrl_nc;	/* no-connects */

    // Power-on-reset signal.  The reset pad generates the sense-inverted
    // reset at 3.3V.  The 1.8V signal and the inverted 1.8V signal are
    // derived.
    wire rstb_l;

    // Flash SPI communication (management SoC to housekeeping)
    wire flash_clk_core,     flash_csb_core;
    wire flash_io0_oeb_core, flash_io1_oeb_core;
    wire flash_io2_oeb_core, flash_io3_oeb_core;
    wire flash_io0_ieb_core, flash_io1_ieb_core;
    wire flash_io2_ieb_core, flash_io3_ieb_core;
    wire flash_io0_do_core,  flash_io1_do_core;
    wire flash_io2_do_core,  flash_io3_do_core;
    wire flash_io0_di_core,  flash_io1_di_core;
    wire flash_io2_di_core,  flash_io3_di_core;


    // SoC core
    wire caravel_clk;
    wire caravel_clk2;
    wire caravel_rstn;

    // Logic analyzer signals
    wire [127:0] la_data_in_user;  // From CPU to MPRJ
    wire [127:0] la_data_in_mprj;  // From MPRJ to CPU
    wire [127:0] la_data_out_mprj; // From CPU to MPRJ
    wire [127:0] la_data_out_user; // From MPRJ to CPU
    wire [127:0] la_oenb_user;     // From CPU to MPRJ
    wire [127:0] la_oenb_mprj;     // From CPU to MPRJ
    wire [127:0] la_iena_mprj;     // From CPU only

    wire [2:0]   user_irq;	  // From MRPJ to CPU
    wire [2:0]   user_irq_core;
    wire [2:0]   user_irq_ena;
    wire [2:0]	 irq_spi;	  // From SPI and external pins

    // Exported Wishbone Bus (processor facing)
    wire mprj_iena_wb;
    wire mprj_cyc_o_core;
    wire mprj_stb_o_core;
    wire mprj_we_o_core;
    wire [3:0] mprj_sel_o_core;
    wire [31:0] mprj_adr_o_core;
    wire [31:0] mprj_dat_o_core;
    wire mprj_ack_i_core;
    wire [31:0] mprj_dat_i_core;

    wire [31:0] hk_dat_i;
    wire hk_ack_i;
    wire hk_stb_o;
    wire hk_cyc_o;

    // Exported Wishbone Bus (user area facing)
    wire 	mprj_cyc_o_user;
    wire 	mprj_stb_o_user;
    wire 	mprj_we_o_user;
    wire [3:0]  mprj_sel_o_user;
    wire [31:0] mprj_adr_o_user;
    wire [31:0] mprj_dat_o_user;
    wire [31:0] mprj_dat_i_user;
    wire	mprj_ack_i_user;

    // Mask revision
    wire [31:0] mask_rev;

    wire 	mprj_clock;
    wire 	mprj_clock2;
    wire 	mprj_reset;

    // Power monitoring 
    wire	mprj_vcc_pwrgood;
    wire	mprj2_vcc_pwrgood;
    wire	mprj_vdd_pwrgood;
    wire	mprj2_vdd_pwrgood;

`ifdef USE_SRAM_RO_INTERFACE
    // SRAM read-only access from housekeeping
    wire 	hkspi_sram_clk;
    wire 	hkspi_sram_csb;
    wire [7:0]	hkspi_sram_addr;
    wire [31:0]	hkspi_sram_data;
`endif

    // Management processor (wrapper).  Any management core
    // implementation must match this pinout.

    mgmt_core_wrapper soc (
	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
	`endif

	// Clock and reset
	.core_clk(caravel_clk),
	.core_rstn(caravel_rstn),
	//.core_rstn(1'b0),

	// GPIO (1 pin)
	.gpio_out_pad(gpio_out_core),
	.gpio_in_pad(gpio_in_core),
	.gpio_mode0_pad(gpio_mode0_core),
	.gpio_mode1_pad(gpio_mode1_core),
	.gpio_outenb_pad(gpio_outenb_core),
	.gpio_inenb_pad(gpio_inenb_core),

	// Primary SPI flash controller
	.flash_csb(flash_csb_core),
	.flash_clk(flash_clk_core),
	.flash_io0_oeb(flash_io0_oeb_core),
	.flash_io0_di(flash_io0_di_core),
	.flash_io0_do(flash_io0_do_core),
	.flash_io1_oeb(flash_io1_oeb_core),
	.flash_io1_di(flash_io1_di_core),
	.flash_io1_do(flash_io1_do_core),
	.flash_io2_oeb(flash_io2_oeb_core),
	.flash_io2_di(flash_io2_di_core),
	.flash_io2_do(flash_io2_do_core),
	.flash_io3_oeb(flash_io3_oeb_core),
	.flash_io3_di(flash_io3_di_core),
	.flash_io3_do(flash_io3_do_core),

	// Exported Wishbone Bus
	.mprj_wb_iena(mprj_iena_wb),
	.mprj_cyc_o(mprj_cyc_o_core),
	.mprj_stb_o(mprj_stb_o_core),
	.mprj_we_o(mprj_we_o_core),
	.mprj_sel_o(mprj_sel_o_core),
	.mprj_adr_o(mprj_adr_o_core),
	.mprj_dat_o(mprj_dat_o_core),
	.mprj_ack_i(mprj_ack_i_core),
	.mprj_dat_i(mprj_dat_i_core),

	.hk_stb_o(hk_stb_o),
	.hk_cyc_o(hk_cyc_o),
	.hk_dat_i(hk_dat_i),
	.hk_ack_i(hk_ack_i),

	// IRQ
	.irq({irq_spi, user_irq}),
	.user_irq_ena(user_irq_ena),

	// Module status (these may or may not be implemented)
	.qspi_enabled(qspi_enabled),
	.uart_enabled(uart_enabled),
	.spi_enabled(spi_enabled),
	.debug_mode(debug_mode),

	// Module I/O (these may or may not be implemented)
	// UART
	.ser_tx(ser_tx),
	.ser_rx(ser_rx),
	// SPI master
	.spi_sdi(spi_sdi),
	.spi_csb(spi_csb),
	.spi_sck(spi_sck),
	.spi_sdo(spi_sdo),
	.spi_sdoenb(spi_sdoenb),
	// Debug
	.debug_in(debug_in),
	.debug_out(debug_out),
	.debug_oeb(debug_oeb),
	// Logic analyzer
	.la_input(la_data_in_mprj),
	.la_output(la_data_out_mprj),
	.la_oenb(la_oenb_mprj),
	.la_iena(la_iena_mprj),

`ifdef USE_SRAM_RO_INTERFACE
	// SRAM Read-only access from housekeeping
	.sram_ro_clk(hkspi_sram_clk),
	.sram_ro_csb(hkspi_sram_csb),
	.sram_ro_addr(hkspi_sram_addr),
	.sram_ro_data(hkspi_sram_data),
`endif

	// Trap status
	.trap(trap)
    );

    /* Clock and reset to user space are passed through a tristate	*/
    /* buffer like the above, but since they are intended to be		*/
    /* always active, connect the enable to the logic-1 output from	*/
    /* the vccd1 domain.						*/

    mgmt_protect mgmt_buffers (
	`ifdef USE_POWER_PINS
 	    .vccd(vccd),
	    .vssd(vssd),
	    .vccd1(vccd1),
	    .vssd1(vssd1),
	    .vccd2(vccd2),
	    .vssd2(vssd2),
	    .vdda1(vdda1),
	    .vssa1(vssa1),
	    .vdda2(vdda2),
	    .vssa2(vssa2),
	`endif
	.caravel_clk(caravel_clk),
	.caravel_clk2(caravel_clk2),
	.caravel_rstn(caravel_rstn),

	.mprj_iena_wb(mprj_iena_wb),
	.mprj_cyc_o_core(mprj_cyc_o_core),
	.mprj_stb_o_core(mprj_stb_o_core),
	.mprj_we_o_core(mprj_we_o_core),
	.mprj_sel_o_core(mprj_sel_o_core),
	.mprj_adr_o_core(mprj_adr_o_core),
	.mprj_dat_o_core(mprj_dat_o_core),
	.mprj_ack_i_core(mprj_ack_i_core),
	.mprj_dat_i_core(mprj_dat_i_core),

	.user_irq_core(user_irq_core),
	.user_irq_ena(user_irq_ena),
	.la_data_out_core(la_data_out_user),
	.la_data_out_mprj(la_data_out_mprj),
	.la_data_in_core(la_data_in_user),
	.la_data_in_mprj(la_data_in_mprj),
	.la_oenb_mprj(la_oenb_mprj),
	.la_oenb_core(la_oenb_user),
	.la_iena_mprj(la_iena_mprj),

	.user_clock(mprj_clock),
	.user_clock2(mprj_clock2),
	.user_reset(mprj_reset),

	.mprj_cyc_o_user(mprj_cyc_o_user),
	.mprj_stb_o_user(mprj_stb_o_user),
	.mprj_we_o_user(mprj_we_o_user),
	.mprj_sel_o_user(mprj_sel_o_user),
	.mprj_adr_o_user(mprj_adr_o_user),
	.mprj_dat_o_user(mprj_dat_o_user),
	.mprj_dat_i_user(mprj_dat_i_user),
	.mprj_ack_i_user(mprj_ack_i_user),
	.user_irq(user_irq),
	.user1_vcc_powergood(mprj_vcc_pwrgood),
	.user2_vcc_powergood(mprj2_vcc_pwrgood),
	.user1_vdd_powergood(mprj_vdd_pwrgood),
	.user2_vdd_powergood(mprj2_vdd_pwrgood)
    );

    /*--------------------------------------------------*/
    /* Wrapper module around the user project 		*/
    /*--------------------------------------------------*/

    user_project_wrapper mprj ( 
        `ifdef USE_POWER_PINS
	    .vdda1(vdda1),		// User area 1 3.3V power
	    .vdda2(vdda2),		// User area 2 3.3V power
	    .vssa1(vssa1),		// User area 1 analog ground
	    .vssa2(vssa2),		// User area 2 analog ground
	    .vccd1(vccd1),		// User area 1 1.8V power
	    .vccd2(vccd2),		// User area 2 1.8V power
	    .vssd1(vssd1),		// User area 1 digital ground
	    .vssd2(vssd2),		// User area 2 digital ground
    	`endif

    	.wb_clk_i(mprj_clock),
    	.wb_rst_i(mprj_reset),

	// Management SoC Wishbone bus (exported)
	.wbs_cyc_i(mprj_cyc_o_user),
	.wbs_stb_i(mprj_stb_o_user),
	.wbs_we_i(mprj_we_o_user),
	.wbs_sel_i(mprj_sel_o_user),
	.wbs_adr_i(mprj_adr_o_user),
	.wbs_dat_i(mprj_dat_o_user),
	.wbs_ack_o(mprj_ack_i_user),
	.wbs_dat_o(mprj_dat_i_user),

	// GPIO pad 3-pin interface (plus analog)
	.io_in (user_io_in),
    .io_out(user_io_out),
    .io_oeb(user_io_oeb),
	.analog_io(mprj_analog_io),

	// Logic analyzer
	.la_data_in(la_data_in_user),
	.la_data_out(la_data_out_user),
	.la_oenb(la_oenb_user),

	// Independent clock
	.user_clock2(mprj_clock2),

	// IRQ
	.user_irq(user_irq_core),
	
	//CUSTOM DATA FOR 7 SEG DISPLAY **NOT CARAVEL**
    .SevenSegDisplay(SevenSegDisplay)
    );

    /*------------------------------------------*/
    /* End user project instantiation		*/
    /*------------------------------------------*/

    wire [`MPRJ_IO_PADS_1-1:0] gpio_serial_link_1_shifted;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_serial_link_2_shifted;

  assign gpio_serial_link_1_shifted = {
    gpio_serial_link_1[`MPRJ_IO_PADS_1-2:0], mprj_io_loader_data_1
  };
  // Note that serial_link_2 is backwards compared to serial_link_1, so it
  // shifts in the other direction.
  assign gpio_serial_link_2_shifted = {
    mprj_io_loader_data_2, gpio_serial_link_2[`MPRJ_IO_PADS_2-1:1]
  };

    // Propagating clock and reset to mitigate timing and fanout issues
    wire [`MPRJ_IO_PADS_1-1:0] gpio_clock_1;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_clock_2;
    wire [`MPRJ_IO_PADS_1-1:0] gpio_resetn_1;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_resetn_2;
    wire [`MPRJ_IO_PADS_1-1:0] gpio_load_1;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_load_2;
    wire [`MPRJ_IO_PADS_1-1:0] gpio_clock_1_shifted;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_clock_2_shifted;
    wire [`MPRJ_IO_PADS_1-1:0] gpio_resetn_1_shifted;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_resetn_2_shifted;
    wire [`MPRJ_IO_PADS_1-1:0] gpio_load_1_shifted;
    wire [`MPRJ_IO_PADS_2-1:0] gpio_load_2_shifted;

  assign gpio_clock_1_shifted  = {gpio_clock_1[`MPRJ_IO_PADS_1-2:0], mprj_io_loader_clock};
  assign gpio_clock_2_shifted  = {mprj_io_loader_clock, gpio_clock_2[`MPRJ_IO_PADS_2-1:1]};
  assign gpio_resetn_1_shifted = {gpio_resetn_1[`MPRJ_IO_PADS_1-2:0], mprj_io_loader_resetn};
  assign gpio_resetn_2_shifted = {mprj_io_loader_resetn, gpio_resetn_2[`MPRJ_IO_PADS_2-1:1]};
  assign gpio_load_1_shifted   = {gpio_load_1[`MPRJ_IO_PADS_1-2:0], mprj_io_loader_strobe};
  assign gpio_load_2_shifted   = {mprj_io_loader_strobe, gpio_load_2[`MPRJ_IO_PADS_2-1:1]};

    wire [2:0] spi_pll_sel;
    wire [2:0] spi_pll90_sel;
    wire [4:0] spi_pll_div;
    wire [25:0] spi_pll_trim;

    // Clocking control

    caravel_clocking clock_ctrl (
    `ifdef USE_POWER_PINS
		.VPWR(vccd),
		.VGND(vssd),
    `endif
        .porb(porb_l),
	`ifndef FPGA
        .ext_clk_sel(ext_clk_sel),
	`else
		// Use external clock pad for now
        .ext_clk_sel(1'b1),
	`endif
        .ext_clk(clock_core),
    `ifndef FPGA
        .pll_clk(pll_clk),	        .pll_clk(pll_clk),
        .pll_clk90(pll_clk90),	        .pll_clk90(pll_clk90),
	`else
        .pll_clk(1'b0),
        .pll_clk90(1'b0),
	`endif
        .resetb(rstb_l),
        .sel(spi_pll_sel),
        .sel2(spi_pll90_sel),
        .ext_reset(ext_reset),  // From housekeeping SPI
        .core_clk(caravel_clk),
        .user_clk(caravel_clk2),
        .resetb_sync(caravel_rstn)
    );

    // DCO/Digital Locked Loop
`ifndef FPGA
    digital_pll pll (
    `ifdef USE_POWER_PINS
		.VPWR(vccd),
		.VGND(vssd),
    `endif
        .resetb(rstb_l),
        .enable(spi_pll_ena),
        .osc(clock_core),
        .clockp({pll_clk, pll_clk90}),
        .div(spi_pll_div),
        .dco(spi_pll_dco_ena),
        .ext_trim(spi_pll_trim)
    );
`endif 



  // mprj_gpio_buffer signals
  wire [`MPRJ_IO_PADS-1:0] mgmt_io_in_hk;	/* mgmt_io_in at housekeeping	*/
  wire [`MPRJ_IO_PADS-1:0] mgmt_io_out_hk;	/* mgmt_io_out at housekeeping	*/
  wire [`MPRJ_IO_PADS-1:0] mgmt_io_oeb_hk;	/* mgmt_io_oeb at housekeeping	*/

  wire [(`MPRJ_IO_PADS_1-1):0] mgmt_gpio_in;
  wire [(`MPRJ_IO_PADS_1-1):0] mgmt_gpio_out;
  wire [2:0] mgmt_gpio_oeb;
  wire [(`MPRJ_IO_PADS_1-1):0] mgmt_gpio_in_buf;
  wire [(`MPRJ_IO_PADS_1-1):0] mgmt_gpio_out_buf;
  wire [2:0] mgmt_gpio_oeb_buf;

    // Housekeeping interface

	wire por;
	FPGA_POR por_fpga (.clk(caravel_clk), .por(por));

    housekeeping housekeeping (
    `ifdef USE_POWER_PINS
		.VPWR(vccd),
		.VGND(vssd),
    `endif

        .wb_clk_i(caravel_clk),
        .wb_rstn_i(caravel_rstn),

        .wb_adr_i(mprj_adr_o_core),
        .wb_dat_i(mprj_dat_o_core),
        .wb_sel_i(mprj_sel_o_core),
        .wb_we_i(mprj_we_o_core),
        .wb_cyc_i(hk_cyc_o),
        .wb_stb_i(hk_stb_o),
        .wb_ack_o(hk_ack_i),
        .wb_dat_o(hk_dat_i),
		
        //.porb(porb_l),
        //.porb(caravel_rstn),
		.porb(~por),

        .pll_ena(spi_pll_ena),
        .pll_dco_ena(spi_pll_dco_ena),
        .pll_div(spi_pll_div),
        .pll_sel(spi_pll_sel),
        .pll90_sel(spi_pll90_sel),
        .pll_trim(spi_pll_trim),
        .pll_bypass(ext_clk_sel),

	.qspi_enabled(qspi_enabled),
	.uart_enabled(uart_enabled),
	.spi_enabled(spi_enabled),
	.debug_mode(debug_mode),

	.ser_tx(ser_tx),
	.ser_rx(ser_rx),

	.spi_sdi(spi_sdi),
	.spi_csb(spi_csb),
	.spi_sck(spi_sck),
	.spi_sdo(spi_sdo),
	.spi_sdoenb(spi_sdoenb),

	.debug_in(debug_in),
	.debug_out(debug_out),
	.debug_oeb(debug_oeb),

        .irq(irq_spi),
        .reset(ext_reset),

        .serial_clock(mprj_io_loader_clock),
        .serial_load(mprj_io_loader_strobe),
        .serial_resetn(mprj_io_loader_resetn),
        .serial_data_1(mprj_io_loader_data_1),
        .serial_data_2(mprj_io_loader_data_2),

	.mgmt_gpio_in(mgmt_io_in_hk),
	.mgmt_gpio_out(mgmt_io_out_hk),
	.mgmt_gpio_oeb(mgmt_io_oeb_hk),

	.pwr_ctrl_out(pwr_ctrl_nc),	/* Not used in this version */

        .trap(trap),

	.user_clock(caravel_clk2),

        .mask_rev_in(mask_rev),

	.spimemio_flash_csb(flash_csb_core),
	.spimemio_flash_clk(flash_clk_core),
	.spimemio_flash_io0_oeb(flash_io0_oeb_core),
	.spimemio_flash_io1_oeb(flash_io1_oeb_core),
	.spimemio_flash_io2_oeb(flash_io2_oeb_core),
	.spimemio_flash_io3_oeb(flash_io3_oeb_core),
	.spimemio_flash_io0_do(flash_io0_do_core),
	.spimemio_flash_io1_do(flash_io1_do_core),
	.spimemio_flash_io2_do(flash_io2_do_core),
	.spimemio_flash_io3_do(flash_io3_do_core),
	.spimemio_flash_io0_di(flash_io0_di_core),
	.spimemio_flash_io1_di(flash_io1_di_core),
	.spimemio_flash_io2_di(flash_io2_di_core),
	.spimemio_flash_io3_di(flash_io3_di_core),

	.pad_flash_csb(flash_csb_frame),
	.pad_flash_csb_oeb(flash_csb_oeb),
	.pad_flash_clk(flash_clk_frame),
	.pad_flash_clk_oeb(flash_clk_oeb),
	.pad_flash_io0_oeb(flash_io0_oeb),
	.pad_flash_io1_oeb(flash_io1_oeb),
	.pad_flash_io0_ieb(flash_io0_ieb),
	.pad_flash_io1_ieb(flash_io1_ieb),
	.pad_flash_io0_do(flash_io0_do),
	.pad_flash_io1_do(flash_io1_do),
	.pad_flash_io0_di(flash_io0_di),
	.pad_flash_io1_di(flash_io1_di),

`ifdef USE_SRAM_RO_INTERFACE
	.sram_ro_clk(hkspi_sram_clk),
	.sram_ro_csb(hkspi_sram_csb),
	.sram_ro_addr(hkspi_sram_addr),
	.sram_ro_data(hkspi_sram_data),
`endif

	.usr1_vcc_pwrgood(mprj_vcc_pwrgood),
	.usr2_vcc_pwrgood(mprj2_vcc_pwrgood),
	.usr1_vdd_pwrgood(mprj_vdd_pwrgood),
	.usr2_vdd_pwrgood(mprj2_vdd_pwrgood)
    );

  mprj_io_buffer gpio_buf (
`ifdef USE_POWER_PINS
      .VPWR(vccd),
      .VGND(vssd),
`endif

      .mgmt_gpio_in(mgmt_gpio_in),
      .mgmt_gpio_in_buf(mgmt_gpio_in_buf),
      .mgmt_gpio_oeb(mgmt_gpio_oeb),
      .mgmt_gpio_oeb_buf(mgmt_gpio_oeb_buf),
      .mgmt_gpio_out(mgmt_gpio_out),
      .mgmt_gpio_out_buf(mgmt_gpio_out_buf)
  );

  assign mgmt_gpio_in  = mgmt_io_in[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS_1)];
  assign mgmt_gpio_out = mgmt_io_out_hk[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS_1)];
  assign mgmt_gpio_oeb = mgmt_io_oeb_hk[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)];
  
  assign mgmt_io_in_hk = {mgmt_gpio_in_buf, mgmt_io_in[(`MPRJ_IO_PADS_1-1):0]};
  assign mgmt_io_out   = {mgmt_gpio_out_buf, mgmt_io_out_hk[(`MPRJ_IO_PADS_1-1):0]};
  assign mgmt_io_oeb   = {mgmt_gpio_oeb_buf, mgmt_io_oeb_hk[(`MPRJ_IO_PADS-4):0]};

    /* GPIO defaults (via programmed) */
    wire [`MPRJ_IO_PADS*13-1:0] gpio_defaults;

    /* Fixed defaults for the first 5 GPIO pins */

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(13'h0403)
    ) gpio_defaults_block_0 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[12:0])
    );

    gpio_defaults_block #(
	//.GPIO_CONFIG_INIT(13'h1803)
	.GPIO_CONFIG_INIT(13'h1809)
    ) gpio_defaults_block_1 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[25:13])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(13'h0403)
    ) gpio_defaults_block_2 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[38:26])
    );

    // CSB pin is set as an internal pull-up
    gpio_defaults_block #(
	//.GPIO_CONFIG_INIT(13'h0801)
	.GPIO_CONFIG_INIT(13'h0403)
    ) gpio_defaults_block_3 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[51:39])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(13'h0403)
    ) gpio_defaults_block_4 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[64:52])
    );

    /* Via-programmable defaults for the rest of the GPIO pins */

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_5_INIT)
    ) gpio_defaults_block_5 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[77:65])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_6_INIT)
    ) gpio_defaults_block_6 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[90:78])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_7_INIT)
    ) gpio_defaults_block_7 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[103:91])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_8_INIT)
    ) gpio_defaults_block_8 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[116:104])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_9_INIT)
    ) gpio_defaults_block_9 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[129:117])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_10_INIT)
    ) gpio_defaults_block_10 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[142:130])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_11_INIT)
    ) gpio_defaults_block_11 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[155:143])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_12_INIT)
    ) gpio_defaults_block_12 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[168:156])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_13_INIT)
    ) gpio_defaults_block_13 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[181:169])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_14_INIT)
    ) gpio_defaults_block_14 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[194:182])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_15_INIT)
    ) gpio_defaults_block_15 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[207:195])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_16_INIT)
    ) gpio_defaults_block_16 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[220:208])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_17_INIT)
    ) gpio_defaults_block_17 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[233:221])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_18_INIT)
    ) gpio_defaults_block_18 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[246:234])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_19_INIT)
    ) gpio_defaults_block_19 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[259:247])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_20_INIT)
    ) gpio_defaults_block_20 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[272:260])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_21_INIT)
    ) gpio_defaults_block_21 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[285:273])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_22_INIT)
    ) gpio_defaults_block_22 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[298:286])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_23_INIT)
    ) gpio_defaults_block_23 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[311:299])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_24_INIT)
    ) gpio_defaults_block_24 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[324:312])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_25_INIT)
    ) gpio_defaults_block_25 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[337:325])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_26_INIT)
    ) gpio_defaults_block_26 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[350:338])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_27_INIT)
    ) gpio_defaults_block_27 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[363:351])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_28_INIT)
    ) gpio_defaults_block_28 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[376:364])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_29_INIT)
    ) gpio_defaults_block_29 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[389:377])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_30_INIT)
    ) gpio_defaults_block_30 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[402:390])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_31_INIT)
    ) gpio_defaults_block_31 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[415:403])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_32_INIT)
    ) gpio_defaults_block_32 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[428:416])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_33_INIT)
    ) gpio_defaults_block_33 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[441:429])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_34_INIT)
    ) gpio_defaults_block_34 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[454:442])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_35_INIT)
    ) gpio_defaults_block_35 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[467:455])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_36_INIT)
    ) gpio_defaults_block_36 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[480:468])
    );

    gpio_defaults_block #(
	.GPIO_CONFIG_INIT(`USER_CONFIG_GPIO_37_INIT)
    ) gpio_defaults_block_37 (
    	`ifdef USE_POWER_PINS
	    .VPWR(vccd),
	    .VGND(vssd),
        `endif
	.gpio_defaults(gpio_defaults[493:481])
    );

    // Each control block sits next to an I/O pad in the user area.
    // It gets input through a serial chain from the previous control
    // block and passes it to the next control block.  Due to the nature
    // of the shift register, bits are presented in reverse, as the first
    // bit in ends up as the last bit of the last I/O pad control block.

    // There are two types of block;  the first two and the last two
    // are configured to be full bidirectional under control of the
    // management Soc (JTAG and SDO for the first two;  flash_io2 and
    // flash_io3 for the last two).  The rest are configured to be default
    // (input).  Note that the first two and last two are the ones closest
    // to the management SoC on either side, which minimizes the wire length
    // of the extra signals those pads need.

    /* First two GPIOs (JTAG and SDO) */

    gpio_control_block gpio_control_bidir_1 [1:0] (
    	`ifdef USE_POWER_PINS
	    .vccd(vccd),
	    .vssd(vssd),
	    .vccd1(vccd1),
	    .vssd1(vssd1),
        `endif

	.gpio_defaults(gpio_defaults[25:0]),

    	// Management Soc-facing signals

    	.resetn(gpio_resetn_1_shifted[1:0]),
    	.serial_clock(gpio_clock_1_shifted[1:0]),
    	.serial_load(gpio_load_1_shifted[1:0]),

    	.resetn_out(gpio_resetn_1[1:0]),
    	.serial_clock_out(gpio_clock_1[1:0]),
    	.serial_load_out(gpio_load_1[1:0]),

    	.mgmt_gpio_in(mgmt_io_in[1:0]),
	.mgmt_gpio_out(mgmt_io_out[1:0]),
	.mgmt_gpio_oeb(mgmt_io_oeb[1:0]),

        .one(mprj_io_one[1:0]),
        .zero(),

    	// Serial data chain for pad configuration
    	.serial_data_in(gpio_serial_link_1_shifted[1:0]),
    	.serial_data_out(gpio_serial_link_1[1:0]),

    	// User-facing signals
    	.user_gpio_out(user_io_out[1:0]),
    	.user_gpio_oeb(user_io_oeb[1:0]),
    	.user_gpio_in(user_io_in[1:0]),

    	// Pad-facing signals (Pad GPIOv2)
    	.pad_gpio_inenb(mprj_io_inp_dis[1:0]),
    	.pad_gpio_ib_mode_sel(mprj_io_ib_mode_sel[1:0]),
    	.pad_gpio_vtrip_sel(mprj_io_vtrip_sel[1:0]),
    	.pad_gpio_slow_sel(mprj_io_slow_sel[1:0]),
    	.pad_gpio_holdover(mprj_io_holdover[1:0]),
    	.pad_gpio_ana_en(mprj_io_analog_en[1:0]),
    	.pad_gpio_ana_sel(mprj_io_analog_sel[1:0]),
    	.pad_gpio_ana_pol(mprj_io_analog_pol[1:0]),
    	.pad_gpio_dm(mprj_io_dm[5:0]),
    	.pad_gpio_outenb(mprj_io_oeb[1:0]),
    	.pad_gpio_out(mprj_io_out[1:0]),
    	.pad_gpio_in(mprj_io_in[1:0])
    );

    /* Section 1 GPIOs (GPIO 2 to 7) that start up under management control */

    gpio_control_block gpio_control_in_1a [5:0] (
        `ifdef USE_POWER_PINS
            .vccd(vccd),
	    .vssd(vssd),
	    .vccd1(vccd1),
	    .vssd1(vssd1),
        `endif

	.gpio_defaults(gpio_defaults[103:26]),

    	// Management Soc-facing signals

    	.resetn(gpio_resetn_1_shifted[7:2]),
    	.serial_clock(gpio_clock_1_shifted[7:2]),
    	.serial_load(gpio_load_1_shifted[7:2]),

    	.resetn_out(gpio_resetn_1[7:2]),
    	.serial_clock_out(gpio_clock_1[7:2]),
    	.serial_load_out(gpio_load_1[7:2]),

	.mgmt_gpio_in(mgmt_io_in[7:2]),
	.mgmt_gpio_out(mgmt_io_out[7:2]),
	.mgmt_gpio_oeb(mprj_io_one[7:2]),

        .one(mprj_io_one[7:2]),
        .zero(),

    	// Serial data chain for pad configuration
    	.serial_data_in(gpio_serial_link_1_shifted[7:2]),
    	.serial_data_out(gpio_serial_link_1[7:2]),

    	// User-facing signals
    	.user_gpio_out(user_io_out[7:2]),
    	.user_gpio_oeb(user_io_oeb[7:2]),
    	.user_gpio_in(user_io_in[7:2]),

    	// Pad-facing signals (Pad GPIOv2)
    	.pad_gpio_inenb(mprj_io_inp_dis[7:2]),
    	.pad_gpio_ib_mode_sel(mprj_io_ib_mode_sel[7:2]),
    	.pad_gpio_vtrip_sel(mprj_io_vtrip_sel[7:2]),
    	.pad_gpio_slow_sel(mprj_io_slow_sel[7:2]),
    	.pad_gpio_holdover(mprj_io_holdover[7:2]),
    	.pad_gpio_ana_en(mprj_io_analog_en[7:2]),
    	.pad_gpio_ana_sel(mprj_io_analog_sel[7:2]),
    	.pad_gpio_ana_pol(mprj_io_analog_pol[7:2]),
    	.pad_gpio_dm(mprj_io_dm[23:6]),
    	.pad_gpio_outenb(mprj_io_oeb[7:2]),
    	.pad_gpio_out(mprj_io_out[7:2]),
    	.pad_gpio_in(mprj_io_in[7:2])
    );

    /* Section 1 GPIOs (GPIO 8 to 18) */

    gpio_control_block gpio_control_in_1 [`MPRJ_IO_PADS_1-9:0] (
        `ifdef USE_POWER_PINS
            .vccd(vccd),
	    .vssd(vssd),
	    .vccd1(vccd1),
	    .vssd1(vssd1),
        `endif

	.gpio_defaults(gpio_defaults[(`MPRJ_IO_PADS_1*13-1):104]),

    	// Management Soc-facing signals

    	.resetn(gpio_resetn_1_shifted[(`MPRJ_IO_PADS_1-1):8]),
    	.serial_clock(gpio_clock_1_shifted[(`MPRJ_IO_PADS_1-1):8]),
    	.serial_load(gpio_load_1_shifted[(`MPRJ_IO_PADS_1-1):8]),

    	.resetn_out(gpio_resetn_1[(`MPRJ_IO_PADS_1-1):8]),
    	.serial_clock_out(gpio_clock_1[(`MPRJ_IO_PADS_1-1):8]),
    	.serial_load_out(gpio_load_1[(`MPRJ_IO_PADS_1-1):8]),

	.mgmt_gpio_in(mgmt_io_in[(`MPRJ_IO_PADS_1-1):8]),
	.mgmt_gpio_out(mgmt_io_out[(`MPRJ_IO_PADS_1-1):8]),
	.mgmt_gpio_oeb(mprj_io_one[(`MPRJ_IO_PADS_1-1):8]),
  
        .one(mprj_io_one[(`MPRJ_IO_PADS_1-1):8]),
        .zero(),

    	// Serial data chain for pad configuration
    	.serial_data_in(gpio_serial_link_1_shifted[(`MPRJ_IO_PADS_1-1):8]),
    	.serial_data_out(gpio_serial_link_1[(`MPRJ_IO_PADS_1-1):8]),

    	// User-facing signals
    	.user_gpio_out(user_io_out[(`MPRJ_IO_PADS_1-1):8]),
    	.user_gpio_oeb(user_io_oeb[(`MPRJ_IO_PADS_1-1):8]),
    	.user_gpio_in(user_io_in[(`MPRJ_IO_PADS_1-1):8]),

    	// Pad-facing signals (Pad GPIOv2)
    	.pad_gpio_inenb(mprj_io_inp_dis[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_ib_mode_sel(mprj_io_ib_mode_sel[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_vtrip_sel(mprj_io_vtrip_sel[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_slow_sel(mprj_io_slow_sel[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_holdover(mprj_io_holdover[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_ana_en(mprj_io_analog_en[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_ana_sel(mprj_io_analog_sel[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_ana_pol(mprj_io_analog_pol[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_dm(mprj_io_dm[(`MPRJ_IO_PADS_1*3-1):24]),
    	.pad_gpio_outenb(mprj_io_oeb[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_out(mprj_io_out[(`MPRJ_IO_PADS_1-1):8]),
    	.pad_gpio_in(mprj_io_in[(`MPRJ_IO_PADS_1-1):8])
    );

    /* Last three GPIOs (spi_sdo, flash_io2, and flash_io3) */

    gpio_control_block gpio_control_bidir_2 [2:0] (
    	`ifdef USE_POWER_PINS
	    .vccd(vccd),
	    .vssd(vssd),
	    .vccd1(vccd1),
	    .vssd1(vssd1),
        `endif

	.gpio_defaults(gpio_defaults[(`MPRJ_IO_PADS*13-1):(`MPRJ_IO_PADS*13-39)]),

    	// Management Soc-facing signals

    	.resetn(gpio_resetn_2_shifted[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),
    	.serial_clock(gpio_clock_2_shifted[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),
    	.serial_load(gpio_load_2_shifted[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),

    	.resetn_out(gpio_resetn_2[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),
    	.serial_clock_out(gpio_clock_2[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),
    	.serial_load_out(gpio_load_2[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),

    	.mgmt_gpio_in(mgmt_io_in[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
	.mgmt_gpio_out(mgmt_io_out[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
	.mgmt_gpio_oeb(mgmt_io_oeb[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),

        .one(mprj_io_one[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
        .zero(),

    	// Serial data chain for pad configuration
    	.serial_data_in(gpio_serial_link_2_shifted[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),
    	.serial_data_out(gpio_serial_link_2[(`MPRJ_IO_PADS_2-1):(`MPRJ_IO_PADS_2-3)]),

    	// User-facing signals
    	.user_gpio_out(user_io_out[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.user_gpio_oeb(user_io_oeb[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.user_gpio_in(user_io_in[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),

    	// Pad-facing signals (Pad GPIOv2)
    	.pad_gpio_inenb(mprj_io_inp_dis[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_ib_mode_sel(mprj_io_ib_mode_sel[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_vtrip_sel(mprj_io_vtrip_sel[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_slow_sel(mprj_io_slow_sel[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_holdover(mprj_io_holdover[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_ana_en(mprj_io_analog_en[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_ana_sel(mprj_io_analog_sel[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_ana_pol(mprj_io_analog_pol[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_dm(mprj_io_dm[(`MPRJ_IO_PADS*3-1):(`MPRJ_IO_PADS*3-9)]),
    	.pad_gpio_outenb(mprj_io_oeb[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_out(mprj_io_out[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)]),
    	.pad_gpio_in(mprj_io_in[(`MPRJ_IO_PADS-1):(`MPRJ_IO_PADS-3)])
    );

    /* Section 2 GPIOs (GPIO 19 to 34) */

    gpio_control_block gpio_control_in_2 [`MPRJ_IO_PADS_2-4:0] (
    	`ifdef USE_POWER_PINS
            .vccd(vccd),
	    .vssd(vssd),
	    .vccd1(vccd1),
	    .vssd1(vssd1),
        `endif

	.gpio_defaults(gpio_defaults[(`MPRJ_IO_PADS*13-40):(`MPRJ_IO_PADS_1*13)]),

    	// Management Soc-facing signals

    	.resetn(gpio_resetn_2_shifted[(`MPRJ_IO_PADS_2-4):0]),
    	.serial_clock(gpio_clock_2_shifted[(`MPRJ_IO_PADS_2-4):0]),
    	.serial_load(gpio_load_2_shifted[(`MPRJ_IO_PADS_2-4):0]),

    	.resetn_out(gpio_resetn_2[(`MPRJ_IO_PADS_2-4):0]),
    	.serial_clock_out(gpio_clock_2[(`MPRJ_IO_PADS_2-4):0]),
    	.serial_load_out(gpio_load_2[(`MPRJ_IO_PADS_2-4):0]),

	.mgmt_gpio_in(mgmt_io_in[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
	.mgmt_gpio_out(mgmt_io_out[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
	.mgmt_gpio_oeb(mprj_io_one[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),


        .one(mprj_io_one[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
        .zero(),

    	// Serial data chain for pad configuration
    	.serial_data_in(gpio_serial_link_2_shifted[(`MPRJ_IO_PADS_2-4):0]),
    	.serial_data_out(gpio_serial_link_2[(`MPRJ_IO_PADS_2-4):0]),

    	// User-facing signals
    	.user_gpio_out(user_io_out[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.user_gpio_oeb(user_io_oeb[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.user_gpio_in(user_io_in[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),

    	// Pad-facing signals (Pad GPIOv2)
    	.pad_gpio_inenb(mprj_io_inp_dis[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_ib_mode_sel(mprj_io_ib_mode_sel[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_vtrip_sel(mprj_io_vtrip_sel[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_slow_sel(mprj_io_slow_sel[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_holdover(mprj_io_holdover[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_ana_en(mprj_io_analog_en[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_ana_sel(mprj_io_analog_sel[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_ana_pol(mprj_io_analog_pol[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_dm(mprj_io_dm[(`MPRJ_IO_PADS*3-10):(`MPRJ_IO_PADS_1*3)]),
    	.pad_gpio_outenb(mprj_io_oeb[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_out(mprj_io_out[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)]),
    	.pad_gpio_in(mprj_io_in[(`MPRJ_IO_PADS-4):(`MPRJ_IO_PADS_1)])
    );

    user_id_programming #(
	.USER_PROJECT_ID(USER_PROJECT_ID)
    ) user_id_value (
	`ifdef USE_POWER_PINS
		.VPWR(vccd),
		.VGND(vssd),
	`endif
	.mask_rev(mask_rev)
    );

    // Power-on-reset circuit
	`ifndef FPGA
    simple_por por (
	`ifdef USE_POWER_PINS
		.vdd3v3(vddio),
		.vdd1v8(vccd),
		.vss3v3(vssio),
		.vss1v8(vssd),
	`endif
		.porb_h(porb_h),
		.porb_l(porb_l),
		.por_l(por_l)
    );
	`else
	assign porb_l = 1'b1;
	assign porb_h = 1'b1;
	assign por_l = 1'b0;
	`endif 

`ifndef FPGA 
    // XRES (chip input pin reset) reset level converter
    xres_buf rstb_level (
	`ifdef USE_POWER_PINS
		.VPWR(vddio),
		.LVPWR(vccd),
		.LVGND(vssd),
		.VGND(vssio),
	`endif
		.A(rstb_h),
		.X(rstb_l)
    );
`else
assign rstb_l = rstb_h;
`endif 

    /* Spare logic for metal mask fixes */
    // `define NUM_SPARE_BLOCKS (`MPRJ_IO_PADS+4)
    `define NUM_SPARE_BLOCKS 4
`ifndef FPGA
    wire [(27*`NUM_SPARE_BLOCKS)-1:0] spare_xz_nc;
    wire [(4*`NUM_SPARE_BLOCKS)-1:0] spare_xi_nc;
    wire [(1*`NUM_SPARE_BLOCKS)-1:0] spare_xib_nc;
    wire [(2*`NUM_SPARE_BLOCKS)-1:0] spare_xna_nc;
    wire [(2*`NUM_SPARE_BLOCKS)-1:0] spare_xno_nc;
    wire [(2*`NUM_SPARE_BLOCKS)-1:0] spare_xmx_nc;
    wire [(2*`NUM_SPARE_BLOCKS)-1:0] spare_xfq_nc;
    wire [(2*`NUM_SPARE_BLOCKS)-1:0] spare_xfqn_nc;

    // Four spare logic blocks above the processor and one per GPIO
    // control block.
(* keep *) spare_logic_block spare_logic [`NUM_SPARE_BLOCKS-1:0] (
	`ifdef USE_POWER_PINS
		.vccd(vccd),
		.vssd(vssd),
	`endif
		.spare_xz(spare_xz_nc),
		.spare_xi(spare_xi_nc),
		.spare_xib(spare_xib_nc),
		.spare_xna(spare_xna_nc),
		.spare_xno(spare_xno_nc),
		.spare_xmx(spare_xmx_nc),
		.spare_xfq(spare_xfq_nc),
		.spare_xfqn(spare_xfqn_nc)
    );
(* keep *) empty_macro empty_macro_0 ();
(* keep *) empty_macro empty_macro_1 ();
(* keep *) manual_power_connections manual_power_connections ();
`endif 
endmodule
// `default_nettype wire