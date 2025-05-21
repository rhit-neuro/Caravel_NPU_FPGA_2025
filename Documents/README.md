# Caravel NPU FPGA 2025
The goal of this project is to combine the [Efabless's Caravel harness](https://caravel-harness.readthedocs.io/en/latest/) with a custom user space containing neural processing acceleration units. This repo contains the necessary tools to compile the SoC in Vivado, add the SoC to the Nexys A7 FPGA, and run a custom program on the SoC/FPGA combo.

# [STEP 1] Vivado Project Setup & Synthesis

>[!TIP]
> We recommend the team use the **same** and **latest** version of Vivado.
 
For Vivado installations you can follow the [Vivado Installation Research Memo](./Documents/Research%20Memo%20-%20Installing%20and%20Using%20Vivado%20and%20Vitis.pdf) (it should be easily adaptable to the latest Vivado version) <br>
If you followed the Research memo for installation then you should already have the correct board files. If not, you can just look at the *Installing Board Files* section.

## Project Synthesis

Open [Our Project](./CARAVEL/) by opening the `./CARAVEL/CARAVEL.xpr` file.

Ensure the project is set to use the `xc7a100tcsg324-1` project part (part of Artix-7 family)

> [!IMPORTANT]
> Ensure all Vivado IPs are updated to your version of Vivado. This can be done automatically by clicking on the un-updated IP and looking at the bottom of Vivado and click the **Update IP** button

Now you should not see any errors and should be ready to synthesize the project for the NexysA7 board.

You can now generate a Bitstream file by clicking the `Generate Bitsream` in the tab on the left menu. 
**Be sure to say Yes to the Synthesize and Implement before generating Bitstream option**

Now open the Hardware Manager, connect to the board and program the FPGA.

> [!NOTE]
> If you are not familiar with using Vivado's environment you can follow our [Research Memo](./Documents/Research%20Memo%20-%20Installing%20and%20Using%20Vivado%20and%20Vitis.pdf).


# [STEP 2] Flashing code onto Caravel using PICO

You will need a Rasberry Pi Pico for the following section. 

## Setting up IDE for Pico

>[!TIP]
> If any of the steps are unclear for Thonny, it is a widely documented IDE with many resources to work with Microcontrollers and specifically Picos online

First install the [Thonny IDE](https://thonny.org/) (a python micro controller IDE).

Once the IDE is installed navigate to the `Run->Interpreter->Install or Update Micropython`. From there you can follow the instructions to install Micropython for the Pico model you are using. 

>[!NOTE]
> If your Pico is not being detected on Windows, you might not have entered the exact correct Pico model name. 

After this, simply unplugging and plugging the Pico should be sufficient for Thonny to detect it and be able to program it.

## Putting the Python scripts and C hex file onto Pico

Navigate to our `./Micropython_scripts` folder and open all the files in Thonny. To transfer files to the Pico, for each file, go to `Save As` and when asked `Where to Save to` select `Rasberry Pi Pico`. (The file names will have `[` `]` around them to indicate they are opened in Pico)

>[!NOTE]
> To open the `.hex` file in Thonny, when you navigate to the file explorer, ensure that the **all files** are selected an not just Python files to be able to see the `.hex` file.


## Connecting Pico to FPGA

Now you should be ready to connect the Pico to the FGPA, follow the pin connections below. (Disconnect the Pico from your computer before making connection and ensure the FPGA is also OFF)

Hardware connection between Pico and the Nexys FPGA board.
- FPGA PMOD `JC ground` to the Pico `ground`
- FPGA PMOD `JC1` (mprj_io[1]/SDO) will be connected to `pin 6` in Raspberry pi pico (MISO/ SPIO RX)
- FPGA PMOD `JC2` (mprj_io[2]/SDI) will be connected to `pin 5` in Raspberry pi pico (MOSI/ SPIO TX)
- FPGA PMOD `JC3` (mprj_io[3]/CSB) will be connected to `pin 7` in Raspberry pi pico (SPIO CSn)
- FPGA PMOD `JC4` (mprj_io[4]/SCK) will be connected to `pin 4` in Raspberry pi pico (SPIO SCK)


Once the connections are made, if you powered down the FPGA as instructed, you will have to re-program it with the Bitstream.

Now you can now connect the Pico to your computer and start the code flashing step. 

## Flashing Code 

Once all the above steps are done, you can flash the code onto Caravel. 

To do so, select the `main.py` file in Thonny, and then just click `Run Current Script` (The green circle button or press F5).

Now in the Thonny terminal, you will see a bunch of text relating to Flash memory etc. 
If the code flashed successfully, you should see the 7-Segment Display in Caravel starting to show hex values on loop. 

You can see the Video for correct behavior in either our project presentation or teams channel.

# [STEP 3] Code Compilation for Caravel:

The following section will have 2 parts. 
1.  The first part will go over the main process flow for converting a simple C program to a hexadecimal file to execute on Caravel.
2. The second part will explain the process steps as we understand and what changes were made from the [original caravel_mgmt_soc_litex](https://github.com/efabless/caravel_mgmt_soc_litex) repository.


>[!IMPORTANT]
>The gnu-tool chain for the RISC-V cross compiler must be installed first before following any steps below. Navigate to the [risv-gnu-toolchain repository](https://github.com/riscv-collab/riscv-gnu-toolchain) and follow the installation steps. The installation takes about 2.5hrs and must be done in a **linux environment**.It has been confirmed to work on `wsl` for `Ubuntu 24.04`.
<br> For compiler installation default installation paths with the `./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d` configuration setting were used.


## 1. Process Flow Steps: 
Before starting ensure the following exports are present in the `~/.bashrc` file:
```bash
export DESIGNS='/home/<user>/<ROOT_FOLDER>'
export TOOLS='/opt/riscv'
```
(here the `ROOT_FOLDER` is the folder in which the following repository is cloned)

Then clone the repository using: 
```
git clone https://github.com/rhit-neuro/Caravel_FPGA_2025.git
```

Ensure you are in the correct branch for the cloned repository, if not you can change the branch by
```
git checkout <branch name>
```

>[!NOTE]
>All the following will assume default directory structure. If the paths are changed the commands will have to be changed accordingly. 


Make sure to navigate to the **caravel_mgmt_soc_litex** folder from the root folder. Then navigate to the **gpio_mgmt** folder.

```
cd caravel_mgmt_soc_litex
cd verilog/dv/tests-caravel/gpio_mgmt
```

Here the **gpio_mgmt.c** file can then be edited to write the desired C program. Currently it contains a working iteration of loading values directly into the LUT and asking it to calculated 4 values. <br>
Note - *This iteration requires re-loading data into the LUT after each calculation*

Once the C code is modified run the `make hex` command in the **gpio_mgmt** folder and a `.hex` file with the same name should be generated.

>[!IMPORTANT]
> The generated hex file for some reason has 2 more @0000xxxxx addresses instead of just the @00000000 address. This causes **errors** if not fixed.
To fix this simply remove all the hex code including and below those addresses. 

Below is an example of correct hex file:
```
@00000000
6F 00 00 0B 13 00 00 00 13 00 00 00 13 00 00 00
13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00
23 2E 11 FE 23 2C 51 FE 23 2A 61 FE 23 28 71 FE
.
.
.
13 07 10 00 23 A0 E7 00 EF F0 0F A5 B7 07 00 30
93 85 C7 60 37 05 C0 40 EF F0 5F DF B7 07 00 30
93 85 07 60 B7 27 9A BE 13 85 17 68 EF F0 1F DE
B7 07 00 30 93 85 47 60 37 05 A0 40 EF F0 1F DD
B7 07 00 30 93 85 87 60 B7 77 37 C1 13 85 17 3A
EF F0 DF DB 6F F0 9F FB
```

And this is the generated problematic hex file:
```
@00000000
6F 00 00 0B 13 00 00 00 13 00 00 00 13 00 00 00
13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00
23 2E 11 FE 23 2C 51 FE 23 2A 61 FE 23 28 71 FE
.
.
.
13 07 10 00 23 A0 E7 00 EF F0 0F A5 B7 07 00 30
93 85 C7 60 37 05 C0 40 EF F0 5F DF B7 07 00 30
93 85 07 60 B7 27 9A BE 13 85 17 68 EF F0 1F DE
B7 07 00 30 93 85 47 60 37 05 A0 40 EF F0 1F DD
B7 07 00 30 93 85 87 60 B7 77 37 C1 13 85 17 3A
EF F0 DF DB 6F F0 9F FB
@00001028
10 00 00 00 00 00 00 00 03 7A 52 00 01 7C 01 01
1B 0C 02 00 24 00 00 00 18 00 00 00 D0 F0 FF FF
24 00 00 00 00 44 0E 10 48 81 01 88 02 44 0C 08
00 48 C1 44 C8 0C 02 10 44 0E 00 00 24 00 00 00
.
.
.
F8 00 00 00 00 44 0E 10 48 81 01 88 02 44 0C 08
00 00 00 00
@000011CC
01 1B 03 3B 58 FE FF FF 0A 00 00 00 48 EF FF FF
70 FE FF FF 6C EF FF FF 98 FE FF FF 90 EF FF FF
.
.
.
60 FF FF FF F8 FA FF FF 8C FF FF FF 10 FC FF FF
B4 FF FF FF 64 FD FF FF E0 FF FF FF
```
## 2. Explanation of changes and process flow

Code generation is done using a modified version of the [caravel_mgmt_soc_litex](https://github.com/efabless/caravel_mgmt_soc_litex) repository. 

We had to modify Makefiles and ensure the correct exports in the `~/.bashrc` (which are shown in [Process Flow section](#1-process-flow-steps)) file to get code generation working for us. <br> In this section we will present the changes we made and some rationale to why they were made.

### Makefiles

The following Makefiles were changed and why they were changed:
- [`cpu.makefile`](./caravel_mgmt_soc_litex/verilog/dv/make/cpu.makefile): Contains variable initializations for FIRMWARE source files and Caravel's verilog (including our VexRiscV core)
- [`env.makefile`](./caravel_mgmt_soc_litex/verilog/dv/make/env.makefile): Contains exports for Caravel's verilog path, core verilog path, userproject verilog path and lastly the cross compiler paths (installed above)
- [`sim.makefile`](./caravel_mgmt_soc_litex/verilog/dv/make/sim.makefile): Main Makefile to compile the hex file for the code. We had to change some makefile commands and comment out waveform simulation generation code in makefile
- [`var.makefile`](./caravel_mgmt_soc_litex/verilog/dv/make/var.makefile): Contains variable definitions used in the `sim.makefile` for compiler flags to compile the C code (eventually turned into `hex` files). The flags involve defining CPU (vexriscv for us) type, family, endianness and other cross compiler specific settings

> [!TIP]
> Currently all code is compiled in the [gpio_mgmt](./caravel_mgmt_soc_litex/verilog/dv/tests-caravel/gpio_mgmt/) folder which is the default that the code in [Caravel_on_FPGA](https://github.com/efabless/Caravel_on_FPGA) uses to compile C code to run on caravel. However, to create your own folder structure for the C project you'd have to make the appropriate changes in the `sim.makefile` and the [local Makefile](./caravel_mgmt_soc_litex/verilog/dv/tests-caravel/gpio_mgmt/Makefile) in the gpio_mgmt folder. 


# Alterations to Original Efabless Repository
See [this link](https://github.com/efabless/Caravel_on_FPGA) to original repo by Efabless.
## Adding VexRiscv Core:
- Generated compatible VexRiscv core using [this SpinalHDL](https://github.com/SpinalHDL/VexRiscv) repo. The file used is found [here](SpinalHDL_Scala_files/VexRiscvCachedWishboneForSim.scala) and was run from [this folder](https://github.com/SpinalHDL/VexRiscv/tree/master/src/main/scala/vexriscv/demo) using the SinalHDL instructions.
- The generated verilog VexRiscv core was imported into a Vivado project containing all of the verilog from [this folder](CARAVEL/CARAVEL.srcs/sources_1/imports/src).
## Configuring the original repo for Nexys A7:
- We did not have a Cmod Artix 7-35T FPGA or QSPI SST26VF080A Flash module, so we used the Nexys A7-100T Digilent board as it has an integrated QSPI flash connected directly to FPGA fabric.
- The Cmod Artix 7-35T has a 12MHz oscillator but our Nexys A7-100T has a 100MHz oscillator, so we used Vivado Clock wizard to generate a clk_fix part to convert clocks as seen [here](CARAVEL/CARAVEL.srcs/sources_1/imports/src/caravel.v).
- The clock pin to the Nexys QSPI flash is not accessable using the I/O planner and instead must be set with the STARTUPE2 primative. Our configuration of STARTUPE2 is found [here](CARAVEL/CARAVEL.srcs/sources_1/imports/src/caravel.v).
- Since we are using a different FPGA, we had to make our own configuration file. Our configuration file is found [here](CARAVEL/CARAVEL.srcs/constrs_1/new/CARVEL.xdc).
- We used the Raspberry Pi Pico method of flashing the QSPI flash as described by the original repo. However, we had to alter some of the code for compatability with our flash. The updated code is found [here](Micropython_scripts/flash).
## Loading Caravel and Flashing the QSPI Flash
The steps are similar to those described in the original repo:
- We did not make our own program, we used the hex file from the original repo found [here](hex_file/debug_gpio.hex) and [here](Micropython_scripts/debug_gpio.hex).
- We used Vivado to program the FPGA with Caravel as described by the original repo.
- Our hardware connections are changed to the following:
	- No need to connect an external flash
	- FPGA PMOD JC1 (mprj_io[1]/SDO) will be connected to pin 6 in Raspberry pi pico (MISO/ SPIO RX)
	- FPGA PMOD JC2 (mprj_io[2]/SDI) will be connected to pin 5 in Raspberry pi pico (MOSI/ SPIO TX)
	- FPGA PMOD JC3 (mprj_io[3]/CSB) will be connected to pin 7 in Raspberry pi pico (SPIO CSn)
	- FPGA PMOD JC4 (mprj_io[4]/SCK) will be connected to pin 4 in Raspberry pi pico (SPIO SCK)
- We followed the original repo instructions for setting up the Raspberry Pi Pico.
## Original Repo Step 2: Caravel implementation on FPGA
- At this point Caravel should be flashing LED0 on the Nexys FPGA, proving that Caravel is running.
- We did not verify that step 2 works, this is left for future groups. 
Test
