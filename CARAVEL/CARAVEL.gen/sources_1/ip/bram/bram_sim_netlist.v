// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jan 16 12:55:16 2026
// Host        : RHIT-PW01CSXE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Caravel_NPU_FPGA_2025/CARAVEL/CARAVEL.gen/sources_1/ip/bram/bram_sim_netlist.v
// Design      : bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27808)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
