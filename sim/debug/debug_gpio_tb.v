`default_nettype none
/*
 *  SPDX-FileCopyrightText: 2017  Clifford Wolf, 2018  Tim Edwards
 *
 *  StriVe - A full example SoC using PicoRV32 in SkyWater s8
 *
 *  Copyright (C) 2017  Clifford Wolf <clifford@clifford.at>
 *  Copyright (C) 2018  Tim Edwards <tim@efabless.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *  SPDX-License-Identifier: ISC
 */

`timescale 1 ns / 1 ps

//`include "__uprj_netlists.v"
//`include "caravel_netlists.v"
//`include "spiflash.v"

module debug_gpio_tb;

	reg clock;
	reg power1;
	reg power2;

	//always #10 clock <= (clock === 1'b0);
	always #41.666 clock <= (clock === 1'b0);	 //clock period 83.333ns, clock frequency 12MHz, bit time 7234 ns 


	initial begin
		clock <= 0;
	end

	initial begin
		$dumpfile("gpio_mgmt.vcd");
		$dumpvars(0, debug_gpio_tb);

		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (25) begin
			repeat (1000) @(posedge clock);
			$display("+1000 cycles");
		end
		$display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test Mgmt GPIO (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test Mgmt GPIO (RTL) Failed");
		`endif
		$display("%c[0m",27);
		//$finish;
	end

	wire [37:0] mprj_io;	// Most of these are no-connects
	/*wire [15:0] checkbits;
	reg  [7:0] checkbits_lo;
	wire [7:0] checkbits_hi;

	assign mprj_io[23:16] = checkbits_lo;
	assign checkbits = mprj_io[31:16];
	assign checkbits_hi = checkbits[15:8];*/
	assign mprj_io[3] = 1'b1;       // Force CSB high.

    assign mprj_io[0] = 1'b1;       // to enable debug through gpio 5 and 6 uart 

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;
	wire gpio;

	reg RSTB;

	// Monitor
	initial begin
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		$display("Blink.");
		wait(gpio == 1'b1);
		wait(gpio == 1'b0);
		`ifdef GL
			$display("Monitor: Test Mgmt GPIO (GL) Passed");
		`else
			$display("Monitor: Test Mgmt GPIO (RTL) Passed");
		`endif
		#2000;
		//$finish;
	end

	initial begin
		RSTB <= 1'b1;
		
		#1000;
		RSTB <= 1'b0;	    // Release reset
		#2000;
	end

	initial begin			// Power-up
		power1 <= 1'b0;
		power2 <= 1'b0;
		#200;
		power1 <= 1'b1;
		#200;
		power2 <= 1'b1;
	end
		

	/*always @(checkbits) begin
		#1 $display("Mgmt GPIO state = %b (%d - %d)", checkbits,
				checkbits_hi, checkbits_lo);
	end*/

	wire VDD3V3;
	wire VDD1V8;
	wire VSS;

	assign VDD3V3 = power1;
	assign VDD1V8 = power2;
	assign VSS = 1'b0;

	// These are the mappings of mprj_io GPIO pads that are set to
	// specific functions on startup:
	//
	// JTAG      = mgmt_gpio_io[0]              (inout)
	// SDO       = mgmt_gpio_io[1]              (output)
	// SDI       = mgmt_gpio_io[2]              (input)
	// CSB       = mgmt_gpio_io[3]              (input)
	// SCK       = mgmt_gpio_io[4]              (input)
	// ser_rx    = mgmt_gpio_io[5]              (input)
	// ser_tx    = mgmt_gpio_io[6]              (output)
	// irq       = mgmt_gpio_io[7]              (input)

	caravel uut (
		/*.vddio	  (VDD3V3),
		.vssio	  (VSS),
		.vdda	  (VDD3V3),
		.vssa	  (VSS),
		.vccd	  (VDD1V8),
		.vssd	  (VSS),
		.vdda1    (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1	  (VSS),
		.vssa2	  (VSS),
		.vccd1	  (VDD1V8),
		.vccd2	  (VDD1V8),
		.vssd1	  (VSS),
		.vssd2	  (VSS),*/
		.clock	  (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		//.resetb	  (RSTB)
		.FPGA_rst	  (RSTB)

	);

	spiflash #(
		.FILENAME("debug_gpio.mem")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),			// not used
		.io3()			// not used
	);

    // Testbench UART
	wb_rw_test debug_uart (
		.rx(mprj_io[6]),
		.tx(mprj_io[5])
	);

endmodule
`default_nettype wire