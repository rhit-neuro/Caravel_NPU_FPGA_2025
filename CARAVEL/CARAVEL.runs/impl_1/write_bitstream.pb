
k
Command: %s
1870*	planAhead26
"open_checkpoint caravel_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.044 . Memory (MB): peak = 293.902 ; gain = 0.0002default:defaulth px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.2782default:default2
577.0352default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
11892default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:022default:default2
00:00:022default:default2
1307.3282default:default2
17.0432default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
2.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:022default:default2
00:00:022default:default2
1307.3282default:default2
17.0432default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1307.3282default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 92 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 40 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 4 instances
  RAM64M => RAM64M (RAMD64E(x4)): 48 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.2 (64-bit)2default:default2
27088762default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:172default:default2
00:00:202default:default2
1307.3282default:default2
1013.4262default:defaultZ17-268h px� 
g
Command: %s
53*	vivadotcl26
"write_bitstream -force caravel.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2019.2/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product	7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product2default:default2default:default2�
 "�
?chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/A[29:0]9chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product	7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product2default:default2default:default2�
 "�
?chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/B[17:0]9chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
:chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0	:chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__02default:default2default:default2�
 "�
Bchip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0/B[17:0]<chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg/A[29:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg/B[17:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg/A[29:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg/B[17:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg/A[29:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg/B[17:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
:chip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg	:chip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg2default:default2default:default2�
 "�
Bchip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg/A[29:0]<chip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
:chip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg	:chip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg2default:default2default:default2�
 "�
Bchip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg/B[17:0]<chip_core/soc/core/VexRiscv/memory_to_writeBack_MUL_HH_reg/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product	7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product2default:default2default:default2�
 "�
?chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/P[47:0]9chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
:chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0	:chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__02default:default2default:default2�
 "�
Bchip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0/P[47:0]<chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product	7chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product2default:default2default:default2�
 "�
?chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/P[47:0]9chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
:chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0	:chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__02default:default2default:default2�
 "�
Bchip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0/P[47:0]<chip_core/mprj/TopLevel/LUT/MAC_Unit/multiplier/Product__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg/P[47:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_HL_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg/P[47:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LH_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg	8chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg2default:default2default:default2�
 "�
@chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg/P[47:0]:chip_core/soc/core/VexRiscv/execute_to_memory_MUL_LL_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[11]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[11]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[6]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[6]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[11]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[11]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[6]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[6]2default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]2default:default2default:default2�
 "�
Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg	Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]2default:default2default:default2�
 "�
Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg	Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[12]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[7]2default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]2default:default2default:default2�
 "�
Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg	Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]2default:default2default:default2�
 "�
Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg	Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[13]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[8]2default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2�
 "�
Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg	Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2�
 "�
Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg	Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram	�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/ADDRARDADDR[14]2default:default2default:default2�
 "�
�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]�chip_core/mprj/TopLevel/Mem/bram_wb/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/addra[9]2default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "x
0chip_core/soc/core/RAM128/RAM_reg/ADDRARDADDR[5]0chip_core/soc/core/RAM128/RAM_reg/ADDRARDADDR[5]2default:default2default:default2l
 "V
chip_core/soc/core/RAM128/A0[0]chip_core/soc/core/RAM128/A0[0]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "x
0chip_core/soc/core/RAM128/RAM_reg/ADDRARDADDR[6]0chip_core/soc/core/RAM128/RAM_reg/ADDRARDADDR[6]2default:default2default:default2l
 "V
chip_core/soc/core/RAM128/A0[1]chip_core/soc/core/RAM128/A0[1]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "x
0chip_core/soc/core/RAM128/RAM_reg/ADDRARDADDR[7]0chip_core/soc/core/RAM128/RAM_reg/ADDRARDADDR[7]2default:default2default:default2l
 "V
chip_core/soc/core/RAM128/A0[2]chip_core/soc/core/RAM128/A0[2]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "x
0chip_core/soc/core/RAM128/RAM_reg/ADDRBWRADDR[5]0chip_core/soc/core/RAM128/RAM_reg/ADDRBWRADDR[5]2default:default2default:default2l
 "V
chip_core/soc/core/RAM128/A0[0]chip_core/soc/core/RAM128/A0[0]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "x
0chip_core/soc/core/RAM128/RAM_reg/ADDRBWRADDR[6]0chip_core/soc/core/RAM128/RAM_reg/ADDRBWRADDR[6]2default:default2default:default2l
 "V
chip_core/soc/core/RAM128/A0[1]chip_core/soc/core/RAM128/A0[1]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "x
0chip_core/soc/core/RAM128/RAM_reg/ADDRBWRADDR[7]0chip_core/soc/core/RAM128/RAM_reg/ADDRBWRADDR[7]2default:default2default:default2l
 "V
chip_core/soc/core/RAM128/A0[2]chip_core/soc/core/RAM128/A0[2]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "j
)chip_core/soc/core/RAM128/RAM_reg/ENBWREN)chip_core/soc/core/RAM128/RAM_reg/ENBWREN2default:default2default:default2p
 "Z
!chip_core/soc/core/RAM128/dff2_en!chip_core/soc/core/RAM128/dff2_en2default:default2default:default2�
 "�
Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg	Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "j
)chip_core/soc/core/RAM128/RAM_reg/ENBWREN)chip_core/soc/core/RAM128/RAM_reg/ENBWREN2default:default2default:default2p
 "Z
!chip_core/soc/core/RAM128/dff2_en!chip_core/soc/core/RAM128/dff2_en2default:default2default:default2�
 "�
Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg	Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "j
)chip_core/soc/core/RAM128/RAM_reg/ENBWREN)chip_core/soc/core/RAM128/RAM_reg/ENBWREN2default:default2default:default2p
 "Z
!chip_core/soc/core/RAM128/dff2_en!chip_core/soc/core/RAM128/dff2_en2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "j
)chip_core/soc/core/RAM128/RAM_reg/ENBWREN)chip_core/soc/core/RAM128/RAM_reg/ENBWREN2default:default2default:default2p
 "Z
!chip_core/soc/core/RAM128/dff2_en!chip_core/soc/core/RAM128/dff2_en2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "j
)chip_core/soc/core/RAM128/RAM_reg/ENBWREN)chip_core/soc/core/RAM128/RAM_reg/ENBWREN2default:default2default:default2p
 "Z
!chip_core/soc/core/RAM128/dff2_en!chip_core/soc/core/RAM128/dff2_en2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "j
)chip_core/soc/core/RAM128/RAM_reg/ENBWREN)chip_core/soc/core/RAM128/RAM_reg/ENBWREN2default:default2default:default2p
 "Z
!chip_core/soc/core/RAM128/dff2_en!chip_core/soc/core/RAM128/dff2_en2default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "v
/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM2default:default2default:default2v
 "`
$chip_core/soc/core/RAM128/RAM_reg_20$chip_core/soc/core/RAM128/RAM_reg_202default:default2default:default2�
 "�
Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg	Ichip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_cmdSent_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "v
/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM2default:default2default:default2v
 "`
$chip_core/soc/core/RAM128/RAM_reg_20$chip_core/soc/core/RAM128/RAM_reg_202default:default2default:default2�
 "�
Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg	Gchip_core/soc/core/VexRiscv/IBusCachedPlugin_cache/lineLoader_valid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "v
/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM2default:default2default:default2v
 "`
$chip_core/soc/core/RAM128/RAM_reg_20$chip_core/soc/core/RAM128/RAM_reg_202default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "v
/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM2default:default2default:default2v
 "`
$chip_core/soc/core/RAM128/RAM_reg_20$chip_core/soc/core/RAM128/RAM_reg_202default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "v
/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM2default:default2default:default2v
 "`
$chip_core/soc/core/RAM128/RAM_reg_20$chip_core/soc/core/RAM128/RAM_reg_202default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "v
/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM/chip_core/soc/core/RAM128/RAM_reg/RSTRAMARSTRAM2default:default2default:default2v
 "`
$chip_core/soc/core/RAM128/RAM_reg_20$chip_core/soc/core/RAM128/RAM_reg_202default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "l
*chip_core/soc/core/RAM128/RAM_reg/WEBWE[3]*chip_core/soc/core/RAM128/RAM_reg/WEBWE[3]2default:default2default:default2~
 "h
(chip_core/soc/core/RAM128/dff2_we_reg[3](chip_core/soc/core/RAM128/dff2_we_reg[3]2default:default2default:default2�
 "�
7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]	7chip_core/soc/core/VexRiscv/_zz_iBusWishbone_ADR_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2p
 "Z
!chip_core/soc/core/RAM128/RAM_reg	!chip_core/soc/core/RAM128/RAM_reg2default:default2default:default2�
 "l
*chip_core/soc/core/RAM128/RAM_reg/WEBWE[3]*chip_core/soc/core/RAM128/RAM_reg/WEBWE[3]2default:default2default:default2~
 "h
(chip_core/soc/core/RAM128/dff2_we_reg[3](chip_core/soc/core/RAM128/dff2_we_reg[3]2default:default2default:default2�
 "v
/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg	/chip_core/soc/core/VexRiscv/dBus_cmd_rValid_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 61 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
^
Writing bitstream %s...
11*	bitstream2!
./caravel.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
612default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:312default:default2
00:00:232default:default2
1865.2032default:default2
557.8752default:defaultZ17-268h px� 


End Record