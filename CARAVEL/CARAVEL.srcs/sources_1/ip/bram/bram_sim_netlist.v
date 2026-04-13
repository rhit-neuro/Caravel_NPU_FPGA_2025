// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Apr 13 03:04:28 2026
// Host        : xilinx-2204 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bram -prefix
//               bram_ bram_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27536)
`pragma protect data_block
+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
YNdy5dE=
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
