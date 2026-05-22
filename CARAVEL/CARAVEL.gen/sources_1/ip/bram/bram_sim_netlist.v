// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
<<<<<<< HEAD
// Date        : Thu Dec 11 12:17:37 2025
=======
// Date        : Wed Jan 14 23:07:40 2026
>>>>>>> LUTBugFixBen
// Host        : RHIT-PW01EG6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Github
//               Repositories/Caravel_NPU_FPGA_2025/CARAVEL/CARAVEL.gen/sources_1/ip/bram/bram_sim_netlist.v}
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
<<<<<<< HEAD
6Nmu27q3dkRDpp1F5hMl2wCuPt2yGvnKBYpH3NFabnNoi5cFH1iVvcFV0D/bkJkjrNoTedMpFbfj
Kx0Db8PXgNWRWG8uYApmKeUrMzZLHG/t6d8ZDRt0eu6ksjqP3g98H/DWb9tPdpu/A3+e1v8xuXJC
DG/CTuwKpoqIBft0eT3yiU+ikxXXjHzddsiPHb24/4TEp7A9ENXhLHp7fB0ZxOwnVkNMDyALEKek
pwW2Mr/UD7It4Hm86tR0OMmcFaWX2FPLsF/sXJMAdzURZB4Q6AkQWAWfCwvKZM4klDpV7GxUVf/X
RfuaE4pzozvwy3ZMS7Nhi+OsLEgR7H/QQyND56R/iz+s/M7iGNMVofi3I6Oc1PmBkcL8oLRga5b3
EpPo+IRigkQ24FTBTxWfEwxUxVKkyp1nNyi14QzvJjGbSetoiOU/6S0mPXF+0ndhnpusUfkOD7H7
6WeJmUWhDUhfMjCsMJLtDPV2YMOZs1kKV+ktCkseR4IbAQYtsBR97Xgmc4mtXYkeQ3+eCRfDgIuJ
xWmNrjdBYuqNCL9I9oAKdxEVvD0cqjRqVUIhyJE1wWdjg6/OZIr5m2A1QCQtoGyNVxvpXi0EaiVK
hGx0yC2c1zLSAwY6XTsQnyLHixBHY8BOPjlfzIZl3EgHnA3WU0lvKMWQLfX4JFrn+LLfxKIwYxXi
OsK7z3ZBTOOPIWiCsmNUiAmvNgvTB600suVYrc4MtkDkcsO5QcPLqlDw4R22q9rTmyWROWI48JWc
Bq7cTOgiZbtZfrkkXViz8wHpzYRECNRUs2sLfXTty77DlLVoTN03nAFS6Ua92XkIQepQHOE49F5a
jtbuPGFOCeCVzJ6P7TOAqzTt1738qJmXFXywUqQV5tXirP4a7j0Vm5LXODCQIdOVok40noteOekC
wee5NAKrJVguFdNOwoRO5oIdETMu9PeVge1YvFdmLcRoKKt0ewGexaXhPOmlPWI7mPucULSpIyin
hYrMNG1/O6LMLcnrm4J96zd9SoyZ8ezkvIJXFcoppZHbjSbimthRgryVnsaOBccx3W+JIlW5VoW1
+vkeSVHotQOh5H7r61QB9KbKQ/SorbOBbIz1f9lTxQ/txspVm34wXhb+5O+vJXYXLXKoxBrFeZqq
TFOpL5vftXdlslpzN3K4WdGVgM0TTKVt/EabAOqNkt6MiV/TknFVEvalBu1LY3+N+8ImEas+FMFf
ZP7G7wktntEElBHYqEhmN/I/tgnACEeVhp55fMMliLmpxK9PbfSFYqsiNTvIh119ICj+HJTPsFkK
P3vX0/pjmLq36C4zGo57QMhd7ZVabeoMbgK2JsSlaPqIJP6e07EQbd1PSal79paEl5Gsr9Rs1ud6
r69MzQGF04wx34FHtaQ1ARHy6PQL3FaExhYA1J/i6G/UViEN0g4NcKp3WUSgdx6QZNWgvcLM40cT
GwKj6Znb0HeBraJ6UGmRqnyBncl+LnC+hD5Y0J8gu3gzVQzklXsI/Rertk/vQz0SkNCaEUQr16b8
g1ERrARfSGoNXYXldR0kT5sDq052lm6Ts5/MCMnpy0/rbs2azbYq/0NpkKPmzaJulTm4jzO9CNmA
88jPYAZR0Ru1zoA1h1A08goL50+PnbwnEa9/TlWeQOGqylNXx1OhrThHhGlX6nR3qMXA1YS2Zz2F
j+bADQanl1wmvSsX/mJL8aHOT3kFMUyMTx3W/xEtdzReOuUPXnX1AnCYgc4Yxyl473xq884E6bhp
wnZZj7g+X37PmvccUr1pYZXkYEq8W1u5e+byaDvX3FeVtRBCmiMa+Z7Jry0/B5PtCOXwK1yPm9L5
9Wa0yPbglVqRglFNRh0nRqC8xWQzrXIp/Zd/MDSKmTrnbecfQxa0Y2wmC3HopEX4oUU07A44ok8b
bEr+4zhgCtMf/Uj18LS9xEk/cgVoC1W0XdG0YkxJZ7e48yu33fYUSLUyws440Z7MxP5LrP8z6ZXr
so299OYwFMCrKdceY7cxcMNaGSAjamL5hxt/8TvVD429eXj5nFrfd2m7iJQ1wAluQHmEI3+js01F
D65tz3TSg1HfaAW+WO5Br+sGXDW4USWlN3J3ywHU6qcfY+UcunRNI7o3eicXIuR+O764UfzS4bor
ynAOSxmbRdYj/P2pEKg7lvaiUsfSgTuNg/jyEt/Fg+RN7o/4VB6PE0W1T4FOxO2v9THmyrHRMyDh
IYmauVsddWom6OtTiBcqkAWGE3QMgz4QYHTBN+bN1tCAwsSSPGi5z2u5OhGiNeuNrRAajHHZy0rD
RrojZDfT1GV8VQPYqkGjJpBxX80R8yMsUF76P7+I9Vr0hzMFHCSj0tRtdNiB/niYmo+ysXzi7E+T
6rjhBlnTKGd4sNwOVixYjTbVuQBe9Rpr8zKt/ZbTxlS63JFmD06/5C/m66kquszAZQ0Zsb+HK4Xy
nV99bUU/3ThGvyPPc38VhdXWMsGke5/rEn7mn/kP99jNqP5DN9IOn/X+acGpZTExNV8YH4Xftwdr
OaDwnkYfaEpF6Vno07/DBDnFqkMmMXbK8kX1FJDMmQRD0yYIq1cFy5LkxBjucC8yPY/0sbGt5z4T
fRO9AojTFvDISn6qU/w93uQM8NOyAPXKhJNerbn3NiN3M2XtzNj9v/oZmpHs565f/tzEK6IOCbi8
9CaMU4kfR4oc2TRijGehTFVMWph+aET0TKi+W5ul232V8WjCbaBh7HpT+YdF6mY995Ph50foTr4s
c1A+nA8LvO9Bs30W6HGzOpRNeoXtO8Z4CJuF1VAXl48PqD2Bsel6a4ctE9EF8wU2nKqk525pbm42
Xv6Z1QXBKVlVeMlXd9um1GAZ2p9JsfjaZ7yFB/JvX4tuq+Z3uAnqeThiFs2GqfO4yNKWczyoG+ai
7xd/xlcyVmXWLOJ9UWUY8xBXA45jHH4oEiGzqxe8YPgERf6rKqz9Y4bvEwmQVA6iK54g96hxYRdq
6PAitF8xljn8KvVaZE0kmiFfpd0ut9/okTonA9UjCHvjjEBihq8UMxBgz3WsmnGLZPH7mc8mB9/n
X/HJwFrSe7M7m6a2M9Y9OVG4sCtGomf12gUFQ1KWHDqH9gcNi0MbxT+0fZOH1NelxNDr1AUi9XaD
XT74IUkBJp97BUyjtPNUCXzLKKCr/b9VOvmIue+tZ4XK0+anlBbO7AKx0Qxqtn3Ot5+3VWj5dSoE
0H1P6xRijv92V2c9HCLLO1OP/fSc+bEcw5Igpggs5uyfY1hUM0zSs4xt8sOMGzg3mo7e4QEQvur5
QZN+Ij4VljOrSrTPm942NFZTDaKlgd/YO1iSkNIW0IM2x64xVfKLE5h/GF1dcMe1QqraaG9T87uV
Zi1ywbFyojR0RzOn6dOEdRfWbCsiagibXChk/DNdvLyWaKHSyV+Sxd41Wp2rzRAqj6WqnzE3RE40
KICXnEHFInIJNC3Pt6mFjmwXNx+C1IAGghM47jz4wtpC03MhI3EmvNWXcAL8RUyJrjmNIVCdb150
HE3FoOQ5i2peaP/zNSw6PbK+5meNBSzKzai6JgvkuS90YflS11NKsukUFM2SjeUBgbBCAp2RnHpb
Gi25oPRYsBA5vmI4m3XPKZkkvVdAQemNEdFaZ7NUcaIMLvOpug63FYsDdy6QTY/Z5A64tPWBIH+M
OKCfxG3wzO4rNUTAih6Pm56boGbcUi75eOXAaaQP668XKzZpRDNMCsprDQTj9n1rpClKRccEPBeq
4PQ9jyt5JCYQyJRZmD1IyRkbedNsq0jAeLRPGjPRr6D/05FNsNnYpHBgkZ1hqOD5xRwg0p40UKsO
6RUPEkFY5BNFbV6Vo5s1gPoa74vUnduTHu8tgxdu154tp+SBb3TH8oFCmGZJu9Mhq+CMgsMA9n/B
FoaaeTlFpzfEJSCqMujNWTNbc8UnuDlz6VFBl2UC9Un38DWBTi0WiGhLSdf16VFZcL3XeCd6VJGz
fkSZMYIPgU8pwK9Supddw9/MfMx7aOuWBMns4YVmE6c2ACmRUalHASLH63SN8A6fEln3e4mxDUed
J3LW++MOpJp4UvmgdKaCuXAuIgHQ+e4frUqwSM0o7ohbbQUu0omFMrHjNndb+JwENWALXkEafyjE
hbuGcRXg7RVbqT8e/W8xRqt7x2pIrZW8TSGEZY7+EH57sYq1RF26XVcjWP5vtKz/77p8z1VACy0B
8o5MQKki0nwQR8Gpzgq1BQl3TyodDIbhydiXD7UAmYEaFiLFekry53PHw3P+iycsVkuMQhp5ECri
QhZ+xaPuo3UQOllFn/k6i1ipC0vY7Jp67ZPaZJavYrZd4BpjwZ05DY47e+UA1czSebynO2SQmjLH
h8HJie3SFMbTDtz2bQGNf5NzN/jM5WS7FU5arkSD50KCLuTseAEr4vrnh2tCgk224k6LVPQ4j/s1
N2zLt/5kb4dq/8W+oCd5yVcz4X4SFYG5QTyIB++lVNTTNYJ4dXRTrBS8/KK30jdvwwRHmuZsSuov
kuRFex2gg68RObNIKO1bo0cXFMtVZAVh+BGlTlXefGPRY0J/F6cdzFOmRvR0bnX9CUeRWLKxn04t
Kq17CKCjTpWzWk4zJvh3bCzI5yyRkw+5i4waeuOwacpLumpRvd4VpX+mmoXtCuxytE8MAeDnHA/N
q02wt/cBtgZWnasuMK17qZdvM/a2U9i4YO1zd+6EtR3ucLvplJpcPRF8Xlr6bBMp0gUGHyhe6Gup
Eq+WmucJCzLZ0AtyhgDJR9F27L+ZY3H8ImpidQnPngBdb4PWzww59/vuVQp80mcR/bcMk7yF8lsy
jp/uMkYjfaDXUJBurZt2LubF4oImi0qP3WyaMD026RE0T+H4Bx4YoDyyFpnIEb9W/JgVjJMqRSPI
tUszAh0KKEL6Y/f9q2FEATG4M4EQkTO7oYG/OhscQFBGAFdn68viraOGg0iVWOVm+/nutgup/rcX
2Vl/l5dnUcdFXoDVOZAPCkBvG94JWJq3+Aqz/6WH0BwAza+sLGGCYlxQPsYqjcXZhygyo3aLpNn2
J2T+5X3ORRgjkPyzL8T5g+dmgk5M3mCf8f537KkEoTkMKGZ7GOcw7Oz2R0SXgkcENuCoPGTcli7T
TbOan6K3p2ROpu4fGqe/3Dhf3LhMri675Nexwu/OVQ8wV2HrXAELrv29WoYN+nQBKqoaoxK9DTHy
/1I0QdX8nOKGrip/Xr8AYRf4X/4Q3+1SfQiPQ0JGT1N2X19XtZmZJTANuZ3zfE6qZR1IQMT3qBM2
JcQRGa5iVEG16eQGxeAssyma4nCMPUQSZBQYGciMlpXluVESUl/68Xi+685k3Kq9CoXcwGdTkeSV
YLUqBRSfdAKQASYM7xZaK9ZjEOBUm6Wi1eH//poTnWddqs7iXD4cLFr6ciDsZ54B0V8iaIURwgYK
hXIgKK1sU2K28Pbvu4hWEKpfcq5hZyiW836AS/oQCLCjlbOLrPfskz5PKfz30T7+V6TiKakVYeeL
eaXeBQW7z0PKwuE5YPOWSCi/D7nBeYAcDNoIEsI/WEbac5DwoWqpOjg9UvoTuHVdLe842py5kGis
tTdEfpv8CXuJRISh26u3wlgvhoEnSdTTUz/wU6fsXFCWxPSDqt6qAo//pWBUhmChsUc+C1AqXdw0
U0TZKGud6igingUOHA5T36CMJCtnlEvtMMHXAmY9PFG1RkHFl31Z8zYTII/LcsLN00VlN2b5yytV
LHsWCrSA44kPDeQY6VSf1IT10VxYjUqgjsZ/9Pkqhs2dIiObILhZaK2c+xW4irT0O0+2KO8Y0L/7
rfDW0LGjpD0OaaFT+b1aAPq1rROk/61Y8FD+64aV4LFayPSKu8y/ggpw4uhqvkBTKROnVCdqrIGg
CWTsNvqfmrEw4JEu2EIDyX7D5MVTTI52UKmCxUm261K1wAWCuJVssvcDVHxE/YUv3gigV+45ft9j
Fum7eZQyOIsz5zTrpbMVt1npa0s9USdu7qvVw7BerKPDPR+QRDOyejRS1R6fP/J1MCPIb98rjSMP
jKOhZXV+oU1gu+OHSEVSRxLCGBcETbYtZ3EGe9YOYw/xfrbMw4gBlVE/AESeDVoUXNvcCmijZKol
z289YJ2gICTOJhSL/DCertI9Qk1/sP2hdvK5ZZEauEVnXDxI0gTxeHFw1PpP07SRSpKqNyU3ObsE
Wre92jj7J9UQQpcINqCmCaLKfZt/juagpOZYMsrWEpymKvQy4UWmuYRHD2LjBtk/RP7i2utUqr+t
Ksv/DDCQwhkg6OP8g0d/C0xyvHD021Jm+oxHwvhgt9M35vsCnFRxvWKO2rDik8OQv3y3xZ1vYjOF
GcLczaLgNE0N6WjEtXWi8DlYpyEEPjdkqEel8s5NQR6HLaAVpQkc+PvNszZNjkMWlvU0kVc63F8O
eR/BkiwLdg8/eXbCfqeZSutXhq3uimc902Z9io//qXhAVGjxaK/GEbWDUigOBzlSTZN/Cz8VDq1i
6ubXzDznr8yawCWIcrGX/bi2h0sHKzAJ6YJ71ll/1VYO+v43CpuYN2zv3n57+OhpOE6VUGAY9fNs
DPXO0U/h3FqtzDPR2pxIQ6PnG/buJeDUiY2Va+lOkton6XmuO2FLRYYeMkTeliFPYN4u7qVoJOx3
xizVOBgSY8vw7nifrLCoQ7+aqiackgXHUsuj+wCLkw4u3Ct+H0jH5wnw1mXv7eECw+3EyLecOcdV
0qa1ufpqjFcgYuSPlHFSW7I3K8Ex9TvX1gDb3bNejTKXNBiX4uaO4EV/Ua882gWo1MkRuPKXM1aZ
x3zLPNizoKd2ajciTRrpk2CDf5IWzNpMWxC8JvX9N4yIRZnPEBNluru7iNK4l2LUMLM9uTMXXP98
0Y5i9lh3bArOXhKeaKDVACWnjSHg/3xtb3bRIJntWydBZNMQxzMkgKEgazsNlbaf0Lxf8a2O5YUg
UwFaHrtndGHC39ELJIkAwsaFpllBpdAcf/gxcax4wtxvqS4ypKorPDTearHI8j5SXuWVQjZyEkuR
/ncSUI8wXuUmT2vImKVdN6OIdxy7LBF54e0w+tlsJfBRNGivrE0slmZTI8PWMHnTojUotWJi0L8d
ia69Tze1pi9/PNwqPbpgwy8/msGczYVIHqx/MX0dpiudNzNnblUsjQLm8NF9yNtAydzMaj1m6+Ku
gh8Mal12gl3qxOZqLq9inlijxr9YLj7+rQmrm0TJ7jQSeKIFtP4Qxf1itcZsE/u2P8vSQoNztgcc
T6TyUp8RX2aaayD5bw/hvu1+paObi17O/9vKxzzuPEZb7DGSwS/WDBdqCD5qIpfN5g6VxC3v3Axb
shxusIO0Nq5GjGRwNdF8AYKg6aKcIbOOc/6iClciR9qeYyX9RTHnKTn7Kh4w4YCJ6okAGd23KzC9
ZZ56sYChbwZvchm74PWf+YXL85A5h2KTO18hMutGroWp0SFvLmgsfwiHQ6zhpfptvXoqmzYWLlgU
ZJE/9ynRNcCAlqGbC1OJmJJYlEzroQsVLb0MvqRxKX1qZau4ngX/MrWOdxQ0WEb2jMA5cQnKNxr2
aakzu/OUi/cDjXrZDiMf21cycWbNuVfk6iOMGbD0CdCbHf97ICstKYuCXtfdsTu/OJYcQyhogJGV
C5fEB4kBdCo19Ok9xRnBUfNJnph44oo2kpvIT+xAmAdVAR9vN4a8UBKcOCySGi5/VlTeJ8T9PlQP
q3bYUseFggyfBHCbj3WvuAfFl2VnkwwqfcnXHTK/0E0ewVNcskJJsehgiiKnfQkTz9A7rC+9Lani
XFFMLr/aKDEyHvXFPZL7doyLuHRANHiwjqG0b4OMxHAlPbl1DTLp8vzMc3oYA+IHN+LYZiCLXjnH
T5KOwhypFN89aK6TQacgov+KATWOmANaSjWsN0Gag7K6JFXI+lslf6GjCSOCcp0MlLUzODmbV4Pp
HmmjzUzp5nQUpymmmHsKjLT9nR5skFljDipglVUKvCYesVm8apMXkHg1BSbtlUuvvNqq0TxDO3tH
jdz1lngdOvNrvmRCzOod2sGad3vxC8uv3VyK8yFlH8Ruu+EiiHXb4DNNzRtpVvfyoVpe2/snThHj
lXeBRs0my21W+oq5lg8CUDNSiKRCxOgksaDBxQVTQHAZhdpmHLHzXwrw/gjkdaF4zLmW5Ba/CJv3
u/pIUxIw/Lua4UhbKPrEZfV1fDqIbdANg6ISzIaq4rBb4rxcRDwiHL+5RrWc8ZnxV3Y+yffL01Oe
V/ETqC8cGlBzq7h8aveGwt4855z7KhHG2fqr1CQpTKIDzbLwGCqDv50nAgOWzJ6VTMt6eDA2YulS
Fz2jP2Ubu/snAtXTMFP3Fq9WcvqgwhPeNjN9wWsUNQngNx6Q3HbVyBhUA/By/B6w7IxztF5VvCOw
hqh2s7AaJxe9Clr5Inbdo+aJf3bO0EAht1zr7eKraxT3lB0CiTJoKlNQhCOZcbVn2UuHlCypkm2o
oiB8T0mw8C0kopmyZfk/SXAKwjRyQrAj0vQ5k0kLhCFSaIeMvPXWxcnVcyDrSKCrjaE3RU0h0Ob3
CBOaSoWmGH5+qbwPEa0kyRjVwpZoIA0PqyPW6WHHW7vHT1FXdquBOPyNemc9l4sWA4wBCD+oIpqQ
FRTwNFMVbXUDoToGbqzII4vPeo+mYDzAoc/tB0Yqmo5rwWMXNuGWPirwHaTyavxNck0QWMxxHVrX
nbNcln6j20XwskVu7hGgM64T5K2h843yZXGfe1+fG7CDjLhExKfjsXF7tX79xH1v2pjMv9u6foII
1aQbPJsIEtXBQIBi7SNqWlmvR78NgtP1AUuzZhR+TId/E1Kla1kze92NMwOj+gMACDAtciFyE4eP
wSZ9dKDLgtcGBcmKldIvDad+BWSAEX+LLsPDmVRsje8hYVfUcNxNWpqV9pNZpeJfAmRuehrm+JID
6Do3qiBMXxp8El23/y8Gn5WjM0WK3GHXvKQBT3/vXjVU8RA4EIebMJMxdTQR3e+Ox74jvCiIN4V4
ygQNsr9Llnit+Y8az1FYburdHRWQ50fA1GkE7PGA7q//cGuimmjHGv3nXXNMHyGXKzEHZlgf+m3I
f8ddNV946pvQNBiEuUiiJ5yKIgQXQcV6sPUJFy8hfWblPzRHMOCP0k8PXUdQARL6K/KEv8Z0457j
IrQTeAx3+FrEUHEu5BxTdLzd8BrCcSXU5aD8yMm4NX6D4A4vXWDQD3X6EyXA73MEFpjwAyFKDYEe
ie+Ok0lvVlHTMYs1J2y+lWVlPtQwJnQwFvSDr8hxS6xU4x2Q5JyIZd2xjQgq2wUJ9p+0nC0lstlg
GdCuLcBvGkJOBVbMDJU4nEFesqLaMlIMgx2t5VoT9xWFbyKvzKK1pDh1mWvPOALc+WGaSd+MJzPJ
Xovi1Kp7y28d7PY3I1U0Xz+vPZM2mXbodofpa+RXrP/6pReVycvPttizW6JOY6v9CjGMVO9/2uGP
lj3r759xfRUTiuyEG/b/N26EE/YOQ+KgbV4/qKngtwRE8XdYm4U9wzii7tLOVwPo8B0UajrXlWvL
xsXG6JNJU97AjTKkVroOHp97GSFU0JWH7xvsKJdaNrNchNZCwZTHyOVMLAFI1LYIrm79vO/uYlp8
88Fs44onBq9SqT/+TGk4xshZaWgm9+u8CpMJHKzbploSpgnzJS0IuTKx4EtK0ZA4K237U0R3Y1yf
C9QkD4r0RJ0HOeXnJmLrnItRYQQxkLmohSbYvWhtCFOSuOMeJ0OgVycES4agGYQ3a5zv1u5RA9wP
S8Hc6Rb329TMknxDi4uR3wM32BIcQNkCQMSiABE3nzZfQ1x5vMvCM9Nl3gjJDvJJthdiUUeSY0gg
jnC9E4Tb6yHaaW3KtqpSvBZc23xSNTOgUrAzTvTS7E6O3uzCewnmCLuLiJBMR4Z5zCLMEDwNk1YV
wpqBJE9sTEXDYI8l+JXl/weClNDc4GTIHv2pN5Wee0/dcMsp1RwG3J1qD0wk6u1uOrqtRS0UkUbO
Vgi9ERlsHNpgotcxl2YCHSGdPci+uOH26Wh4rmKLdKqDgh2odGT8XFjrzxBzj2FrRXko4r7Z5S3A
/fH0u8SZ92VXxtnuD7cV8XLwmzaPquv1TuTDTYHVBjU62uQL1UxYgpxCJIOzefwLHcXIAfEUkgpx
samtbkPik/yRn1jl6//cdf5uVBV6QUfoSJcTMhnYF8gOXfAv0Wm2gZjBRVc5cmqKdFsx1/Z7V/ed
dkazAxVjlPPbG37nb1VcmOCh1drrTN4l0x0pG1/TWQw+bXC9vPiUBky9ygifQkN/SKdmDBAwoQTd
D8B5zTGK7274fUPPQBymklpdFaSLINGKvlUrIK1pleiB2jUxg3tC4IG73k4D6iEnOx8+1EonLUCG
WICpJwcYYzpEnkrvxtmG9H5mGOd3zOf3oJFfqPiiPCAzgO/TkFX1mvtiCapR7h6UR6nc+j6uMHjM
4WySXtBByQ5z2Rzxs2AqyoM+fbc3ODX2ZwheK8swv087u1eDa0CoYq1sDKMfALU9yjgaxbOioaTG
4BRN8eRDCT1oII32yghGaq/fyz1eSmymkXB0L8lscWMqgUiNUsTkfW/VDZBZMbnxcWP+NEkK2wzG
l0RnTMxX9fEeq3abXRdb2arwlak5YQVr+fRW8QCve/vbLglPcl6k2n7b75IgRWMatbBIz5Awvfn5
szyW39JS1xTdbf/zwZyADvj+ufzvdb/CGaHMjDlwylRLDVujnBDITJTAdJLYFtSga1p5bKU9+6KG
9WvSxEFH37KFgGi/k3QJhHXO4joOf7dIP+46HJYWWckAktE8RBhwE96Utb/YP+7I3GcNVxfTYDLd
zqbVMgl38345CaYcL0KdFjJ38LIvwmk/HerXvAxJbjTvOM6CQ6qZxmBX/x4LNW2m+fdRAsBet2jg
elbHr28DiatvYXU3qLHw3TKaI1A6BQ5TUXYF9qX05I8ML7/plSKKunjaZld9UV49AQuOdRNzDSVt
tNBqQ530anMYzvaEnkR63yHvxOukYVhhKjXZW66MYlMqXF3YuBUjGUovzwBf4TRrNax1qYC4Ht4v
/BJydn5eyH+AWLYQgr20TRVFTHZMA6hgt5n1s1j1K3Y+JXGrfV80S7axbm4kptNDWoNTrC1elhJ0
RQQRJZ46R12eEoc1RyEZJiEPXhjvPyIh7tVm7UHU+05LwxfTXZckl4QRYO2GyoJvVLBjhaZE0k4i
Ih4BzpX9y7b6I1w1e6GnhHAaMv5rGsYdJ5i/3wPaSCTWcuD2uhdcvZ8fiiGhp9LDcc6vxQ3qqMiv
UBiDTRly8nc20Ud5ODq+1Qh9FixsTKgFjsxwUFvHBVw88TvHRNPvzpzvJ0M8Vz2gswY8wjbVw+ie
ZmgcW+BFWj0IUSJG34FF4xZqOZMBnsUPugfBkl3CbiH6San2oDlAaRctCeeE6RpFxF0pgEPMHHHq
K4d54jDnzvazGvD30a7C/ivuOs5R5hFCGrg+5l1ThT6XACQ9DeSWf2gJd1v1ARcTKoBzcKk1umA8
tDNzb1t/1AWhvAXYyazsTaBSvpQANIxkgDrW5LrS6qB6lyGHWXXdztp9joCQdLfZpeJFwGbK27CD
tP1RXIwf2eYiGiPVGjakUKyluzeV3+tharXCvwNFrz5ZqTHTdrukC0SeQ1mQqKOm6Y2a7v6NaOn6
8EhZGebcK/taGSfyWQo8dYVk0SGpOpHSBkQqvKGAkVFnEsCAp9uNOrYa1FvNVGpgxCGV0R+b+uCs
uzvUjOHAOIckdLHLQxhLmkmqmb9WVNTkpn92H7vedFXhpI6cN/V/+NkCT0HcrjboxEpD0y+n9ARD
3aAkeaVNgh2H6KFC+AqjHXWLQEH/MT9bnMP0CqMa8HFFZwS2Xzzp4Q7+cTe+qlWjeVpvJHCHjoGZ
IkjUmrpL2nNtrkDC/1CwBewm0KAj7vTADaMvALPmGJcb1xxkqBR3kBfY7dXTRuUcP3CWok/RcIRO
XdVMEqc8tlNRsPg2w1rKKs1cbvs5jHeGeP0nNNvPYVNONcASJR6k7Kge8PyJOSmMDm71NvteJ3eI
DYETgmbstrwYUILYm4Mul6nbAWL1eNW8DEFHg/STSBNHAOLzsuluNNMtrjyHkVfEVkOaSawvkIpf
4AOUsOdVRyBC5fkuLm7k1NRCim2cWlh++K4cS4ak2hbULjfuKHN7IxkCsDvlpt8fQFAcs8Gf+AqU
0oTKDycgWEfVJv5EGR2ZBoF/pE9ZAs5wLTvTLvxbdBnezzQqljVsXlsWei8o0nMZ7AbPKSCVKclG
pKoWNjTc9nTNpgRxwmUCoPdTrDUD61pR9kFKrwOa1JtJXY+UTFNm+ApYGl12bqBXAFMYzcz5Y/Sk
OtGCAx8GyFpthB5+I1Zgn7Z1hQw2Npuc8XquRA3CSTSbd0FSNzvZAA6r9IOZn3KPvBr3ps/F7pSC
+OR5g+cWnw5/6+98dNYu4CkUTxep4pwKqpCh73GsqneicI+NZjTrt17i7XMYgk1I0aAw4s80pUpl
V+lSwtv9j2Ka4ybgQjhqpMKHn8K37r3V1G1SJ0g19nheHsja0Ex7tcDR8oojSj25lnEKrXr9LI0b
i5U+A3S1peEPWVLvC8e7Opj8VALvjkWbQy815Tl/XtwFmbaU8uYpw6gEqZcoTSrVNj4qGrJpTP72
2NbTTRlHeNx3JOGdr9m7YeleZGFpbhgaOO2T7yVaCV+fR42621PKw9jNJv+hxf9JLVtP5uoxwH4C
s66zDnoR3UxXjUDry/sNqfyFK3UP3P7aHiAliz6k49BvIJoyRkMTJFFnfvXUGJqEms7gBd7Np6Y9
ITTc3y2ACfVodTv/6TsQeWV+ShgBv4eyeRDrFr4ckfW/WFulqp70tUOTwhOgMHkEc8C/5JMmGnpo
tVKat63t0fyXGI6gfLmvkJ4MaVCqf/0IEl8LMME0Deb+5VUudrx2vRV8pAk787kc3Tod/AesrbtW
XYLzBoi46olZaX2QAkPQcJh7WOsT3A+ITiMhga/F3HSr0VUNZhlawQOl1vjwz4TURWnTBjfzGG1C
HgCg3ETFk1XvNWHHIl/MzvoC9nTwK3mUhgWlloocwn3m+GetGljoyy9Jlj0lIuDV3lCP2Z68/woP
46MpOjuOzX19uNC2w+cwg9A5JWPi61J4jDGe2wEypgvbQeAXY+uctMUeikJQceELrIXcDW2MjwRo
dBhuzCFG9sWoCGx3QSrgbHdS9fGKixcNlAjghBY7JVuYhK/wIqTFtOMh2pU7H15NUOjxAjNs49kF
K4Y6IaWw9Vr6Wea4hWHTJklS9fVqVr04GDA8BeayGgtkfWke5ljFzl3ti2EqH0ntHf391gVxi3eI
h5XSe9N9abtNSqsfAozlX0cJgURvuy0UFQnhwRX3Rb62jpET+hD0s6tSbF4aN8d0wmLE+0NB5twE
yOylVIqZYSRK0Jolr26oxkBKzYLCNcBjv3cM3s2WR3T4SR2o3uhGgXL8CrNiXlJIxq23JTx8x1+t
CAkGtkdi8ix8DBOJE2w475Ytz21fpb4VSvuYmZeiLHsfF03xxEW9ik11lZw0MDFHTR7aSbWBOpvL
lblyHHOYHDVlA6HODWw8kMtSQG9JYfYK0tSC5VGh/dN8PjKRrkFChzqlR3yvn0kYdsUZqhhgVtrt
k02Hg8kDrkYtHmsoU+AMXn5rwmFJd1i7gAzlaCxRgrB89jgiURx/gEZ6JpPnCq3IpSpw7tO9H1Bj
or9DWM4aJLUpstDLLIvd+XydKUoMZAfUAFVdcDf8t9pOctpwn0q2JxnOld5JBeBRgp3+mNqXYe8B
6hLzYw7J0xt3HHpXYinv4zfB4tAihkJxj1XMGxt4P3B7ECBbhDMizwp7qMBugrdzCpyDSWovo8li
Tktxm2ZJGLl0WbSaQNz/yaMj6x9hxTkbnwpZ5Q5GSe/fTwbB6UvNVgNZL5Orpc8cZGPifEMCHxlp
5oydwrbws7hoLAuK6d9JpKYBNsg5sdv0CwpOYoTYf8pApEo4PgGPaYi2FMQdz5dS3VWp4L2hjjsJ
Gk2jXw1jnAHHMuRmh3ir+ANvMMjrkJ0mq1qJtrxe8gsviMTE9uuH63klqRCaN0GUZotrpvFesCg/
0DvpEtLNatnMmohPmrYtJlqyXp0ajouzcHBkZNwweMF0ALr17A2yKrr1nXSdp/IMmd/Zzo67bHJP
brtJKlXKpKARyHcdv6Mz7w7zwBxn7V1mwhQOFb4xMO8DzAyzq5m+Rd4rWn7u3m8kyz6hA+P1gsCz
hWjw/XvkDmOnha2N7sIOzWGWSMg0OC0kZ6tYZYRTCigy756oVXLv6zQT3OUmUML5PSctzaRAEvry
YU235VbxN4H34gNfFDjujvWcxugmfKrjB/9y1EnsFd2Q+w1u7h71Pwhjmw60s0UKs95FfeZXMN1F
8K1zW2WycLz+9xEgEHorKjCsXzRgQzKRIsV9cOoVsZr1/OEtlsjMLq+1E80lEOUZB24j5wRJ2WZP
bX797zc5hfniwwvGIhTT9bGnuIO4pi4G5/9HGzZ0w74MU74QqpHy2kOSJf7jcYDprl2y8t4Z4GKN
UFmRk9ASqbxOseLUJU4wrruloA2fDRkNxwQHFeoG7fJcamhg4KqltGdDLVWiDJVOMaD43miZDgum
AokLYhJst8shJ/qfw6zVYpNzWbJvHssmYxYGe1K1qp5MkV/eKRG56HOBl06F6IAFHau127Sb9oYh
u0IB52j39LvUnTSaxlvRatogARSQ6UEQFSkfQG2GULwOF/6Rl/Z9s5K0ocDolmgh1XVkPrhu+IMJ
la/S4PxNAmgUMsXzJQMumizTLFwt+CMqoSNmklvWwm888PNuQjUT+nq3sOwAwMAkJTin6r6dkO2L
9672eB1Z9FPQFS2mv1Q/YzZa6ld5XV11rC+bb6wpjtNC87y0IJbJ+fP55eAZtNOAEI1zZzAhrs5g
drwthF/oKm7zgRTfPl7OuVvBvoWMPbqMHO42WX4DBnjU4dBPjdHTZQoFM8dfSajF/tBy92rr6Rbq
4ou3zEuirk+n2NH5IkeJ/cId/KmCFBU16rOtBxpL8YJKBfrLMyLAZ445E5aSeiBMYSyMEKEWTkbn
DOTeGth6cXRjY0u49ASd0zAS0JMwH2jDiuKWWI5PJj3GOhv6sInz/spOa7tGR2b154QK+htac2to
i2EeNnU+VvndoAKa+vi1xnP4DlJ9jsxVajrfhReSu4VpuTcrkZnY1kKBbWLxbBmis9aez0HTbiiT
JUxlp8+kaNe9Y7J9DoqaeWg3i+nUG70ewUY5OigmTJbQlTgXyhz44HRX85uywWXX/pWA1qXhuSEe
32s25PVrZPKv6qeW9WEYhO4jlrflIuN5AaYm5bwosb58KymI8ey6vSVyQZnwIg/kv0eKRCevSH4+
IR19AggQo11oRLl+IRRPZhWI7Yv+FOslw99rnIKLCudZmREPsDrG1hG/ROaKb7Cvg/0AwDCguWzu
2i+LRNi9zjXoTwTZKFs4k5h+t5mCjuw/+i4wqcuC/7sPOoxFJqpXLs5xN0CZK+zgFxkN4VBJYcVC
mFcP1zoDBmg+EQMGUBnJuDvxshBrPSajyU1Y4hRL7VTXivtBdICmysiCmaB2mCRV+Pc0XmbLAHof
dKwg+3lmICDGGqpMwyA1ySQURJn5NNtxgmsuMbiQb+tqnaU5GH6BQUwhoHw1rDanCOG9iCdbcsua
viQ1+dXm/wqIKncav5x8I+B0Ft8Dymy/Sv9cvuZ5iUlTnuVVxrDlumXtH5v1/ZawsZvzKXNfbe7B
hQm4mZXKQKA7bboqD2zukbQLGseDaK7/8Dyq2taOPY4UnQd3X7jcp5ZMebfry/tHBgoEbqna1SNW
XcoEEby8yfcdVE9BS/l7pBZUq7O1rqEpne0n6P4HBkhMc3z9Z9OD8rqsd9n6w6YLfeuAgyDUTFPn
pWoOy3RfER2Hb78R+lWnCkoI9x8rasgbKGQOsisQZhDPwjepIleFJAkuEywhT3/zNmotuYOkSmYP
Okd+t3PgTSelqJiIVyuyZ6Obem5jtIa2rikUWuMicwnjWrcGNFWG8I1d/L2RbmYrYC5ve06N6tY0
NbaxpeEYk/25eNpe0pOQ/hUFVZHJ0jVYd4yJ66/uo2MmNL1WhrDlMjPy/2U60oUPtZObl4PuWy2e
sn6oZPh9odjuUMHFdZOKJ2xu7pPEcLKgBu6p5yBapGslD88UhhFiu3Isq/4XIM8RneIIWwyp6EK9
n6INPKJEZpYaKjvcaPxnt79zHp2q6noeeJ3RdlR3tjy4tJLARScjFOn67tgi95bJHpq3/ltdV+aH
xWdWlQtlT6boW+OTnBbHhO5zc+tQNoS94BzuSYTZp0Co/rpclCU8ZXwBgqJOkI/JfWPg9h1fHemu
ToXwucIYB0g0qLuNNcS3oTw2JAWnJOpecCwYBmkzAg7QXUDlwsSMFxPt8U3INdZRLunKG7uKyYBT
7o77lgJwb+LEHZB5T+NVhFsbby01LCQECqVN9YoMCaZotXW2ohx36P+Yal8oPYvMhvVte1MRAYeG
ziO/YMlw/qY/2MJvwe64Oc1WpuonK9NhYB0W841is2O25LUCdhKYii8j3j3QR9QClWmHNrev17jo
wFzaRc/6Gpf3OhdcZ8fYkWqDrnjGq+lZeetGJx9SrGmASBl5ZY6sRwZXLgZWliN2T3tJ//GEwZLS
BdfU0R1xoeG1ZX5CtTJcqErFotaPz8NbA8lPCKt5GX9lFfIdc5wxRDdGk36N2h7CTX4CtiKMNxPM
JIkssZfPVOP9Vss1wMtXsIqAGu3MuX0FTpKLuO8hbSYQgzb9tG81Df6beeXW6nRlbGjNc79GlIh6
mhhS3z/t7DGbzxBCp1Wmj+Q+gVPEDZvveBhIafvITcPhYIcZ8nZWcvu4S3CxkYQXHG1iai4EbRNm
ueyzMVtAtAb6nbp9wW6gYYKuHNiZiEke1a2ONHj98pCOptGgFAnvjfsXrqKgeDghL2q/GhWM4oPP
e59crGZ+6lpIEaWRVkt2JLA07H6xkMHtNNs5qN7Ae2O3Qjt30wV0H7/NMeuB6tM0suOlQ5LbzypL
3W4bHbjyr+S1yGbIeVGaFYZdvcDq8t+tgi5UzFzSDpvCTVX6XFg1Q+0QaHs0vma0b5rczrWJMs1f
t41sFkWnVCistuY12YU5jngZ6iN3r9idxK71k5rUU/NyLXmMD4quOLKOC7L7614uVLMQJEuqPgLy
XlDruSVaEHegU39srm0llFSVd4ESMDj39SWG26pjA4xGJ2Z2QoIuJFcQNUxY5MRo/9/qD02fnJq0
R7N87Y83e3AatmuJTWLY6jgQ7WHz0fl4hpqBURYx8WOdcxIUY/SXBfGSzZCyPj8GXqank/B7HuPT
ZsmvyNciUCNrVKQO+THZ/ltUP+4/LPFyNv9QABJ85INWrObEZ4YmHN3piuLNVfareUsby75qDcuK
WeZzP1x7tecC9snxxIUQ5jZsMHmo3An2Es4XCAYWGOP6tOgCVJ7Sy45QPI+nt4+ach3Z5IDfEcUX
yU1UQIYhQnH6jDIyZCeNnT4G6yGVfretS25AyC+dOeNCipCZH7iP5rRg8JsFOP70LzeXNO2AK2LQ
XWlurExSeMGwaixbqTPOv1OYUBtldcKIr/lrd3jlx41zxMY5hJxJ9IMCB79iqiFiEXa9NGG4q4w3
Yc4R4rxwPjYz7K3Ww9rjC59lL0jjBE9pP5bbl+xdiKiI+3GIQ/lFCPRha4Vo3MC0BYfQuvWsPoZ5
FPzpVJSo3B1Ybj6d8T7D2sA4HwwyhTZhqOs2g3USrwa21nEXm9cf0J18iaJiahb5DhA5r6yT23OH
Sr3uNGca8pV4Sn+hdA/L+kCyUzMJmVMXfrHM4oLMtYKZpYWtPFa2NGh5VRxueh//8LwNs+H1XlD4
+fvaPlaCkMGpPWl7QjCZs1DoZ7r4fs5AsAyKMxiFSkgkDIonQ6pyKmvmro639eCdPy54iGXFC5yq
y7P1H8Q90JPpv8FdHpdk1n10J0e2dLcI0ZOijXtnbX6DN/LmDYqIe1kOKDL7p1dCUNlxyTNiTrQV
TADr/X0XHSk5bPE99z00wVXX+m11XJTUbr/a65S6VXq8x7GVSVi5ZBidzozaFrC527uqWl0ICJde
4Mf1WCqHYIU1NKkRJftOamnqf4EmdRf5j+/U+CZFlx99JMObFmd6WUUKQEwf/1Kg2JCri0XsE8CU
b6ZZ7Lux4v+dYooU3AWQ5xbfg88nTE0/75+077PLPyWvlEyEYMN5M5Gtq+9ncXZPca3K6YBOUEsX
hGUEpm26AomyCbo5M+s5cnRoWUbj7QWTobc7EZLeEnK/5WnAu/iRwpRm45eBWw0UaIFwCRZ6mNYW
+K+JlJRdH83gSah7ZwVxP6K3/ni4ERFjdldfr7fT6F487LnZ3llz/t3bEXUxeizdBVI6rlKT1Q+o
8eCEmqei9QWAoeGVGig5tLqXKtMlaBJsogNf9Gp21dxuHXCqVHHp3uumygTE9Xsv+QoiX/gsPnqz
iKIvpQVsYStQ0+Q5DxkxeyJ0o7totbC2ZyufNnVfpO+KzaNCWYqevV5VVOeury/ekPyn902EV/zx
11I8ZO7S2ojv8T6P4InXSk7CzkPE4dTz0MTwcbNsY5jy8grZVM2rmC6/tRVY0F9YHnV3evfiUSWd
BY+WprgCJcP9DZfhT+Z1AOvv2uq7NyvREzdgsxE5PKdoV3GYWTX8Qe8b2y3dtu6eDJWhk9Z9Vr6t
sRlif8vUV0OMnfVu5sm258Tt7Tls5svnFX5yJ+keNTTe6/1AwiwWWFFhgvSr8zb58hVSjeSWPEix
6V02uof1w4I42g+0spVY2Nidj650AJ0dmz2iFPsyH1cFjO88a9EjKFS1OHBfjAbu2wL2lhBfS2Nb
NiHOEzYQRXE+24JpcaQAvU4R7yppkkxQ425QdFFlzu1mM9PLEN2QDzl2nIc2oustn5SEUu3f09GW
lKXAx1jF4hKgs/vTRUrpCc92/SYKOODl5HCdQ4oTeAeNhbN/+87SDqnxLxWPV6dHkOpBDEByaYIF
lRCKUbZ8QSsr5I+pP8tL91Z+pJAONj3vNGfPnC1wpbvyysy3BLVYb6p3Y0cmYMImXEUZP5tjBvqC
ELQPsYd8Se6ks9ZzvwEa14DOspW9i/XmIcmL2NayL2QElySV8p1WfPX8rF45mQvUYF3AQXNqjFJ+
aeb1TlRIsbt1FtlI3d+qGPoNonQTaD2s2NpVsw8vga91sQ9CMnD1JJO+Xo0Kh+0greWpv7t31ry8
zlfjle6L62aSsQyGDsEQ5FilZPtR+g/dPYnWlgCP5IhSk7yGPn/s+R/yvVZ8jUUWqNtVgisBhOBX
qzcVGZudlSlXRWZbwlbU4HrDydQc72FntgiU+66Bx3DPZ8PFozj9wpEZ3hxvhWoiXO55AgXOt5+c
67Omm/b77dP8I19VQ6499UYYOqcZekglwpiVrGun2aB5iAR9rYaUSzZBVhQ8sxohIFGKwWmlkcD8
NedPJzp7VKzJXCLwTtspylwvwfpuP52qsbFkKwDTX+bP8qy6WvenJUTj3785bOdcnt6+VTWb2S5m
Z/Uwq/Ldtrw8EMaqMr+Ck5pFjERG5NzO2vP7VrQPn3A26AwzxTFZd78oT0pt2tSHMffGBw1iVCaO
M5hXL/06tRJInsK4R7YPwmTw80EqN+pC7v/3selsMJmBqCMLJZvwi/2JJrGcKtaRrWxPDKVTVXFG
GlGeER31hA5bZ+7qnGJiMHu15fznIvrxOKdboSOyDyUIHc4/EGAKdh5eE6QcoYSuwOw6C4kIATfg
SrriOuemtPzri5Z+aLTsEKq6Xjz6F0BCpckYmIdeBvEsutcAk/QDw+Uyln2qEGYQdP37J1JcWpE/
rxQt+lZZZFNkSWQ6hayM/IVtyfADTwYQq6a+KZhIbmhbxV5pktwt6Hh46LHz7zkbUwaGp4rJO8OQ
1Zpy+G30TG5mKRy+UbF5uoKOdP0BLX1zwCWhK7Uf7MvsvkDnDMknH88ZzzBRKDaCaA3VeU6+61Ml
PU4JAB5HJDwF5o9H8rXTncuFXham9xn3Cx2b2uvZvhWFqiut8qcGW9V7fHMwnf1gJwamUIDcc6+t
Yijr3HmliQ48jSrLzuhSEbzengo13oV3hd1QTtg0VtpwYI7tPAxFZZ6Rr4enB0u632l5yAcFQZ0L
2cc/hT+chYS8k9FCXqmQZqKqBwOmi5tfSMxakU3s8OL/NEo9joJY15Ps7AojlwbuSq/Aw9i7aerD
BTdNeF/0CoNoVbAHhVmT+xb3160N1ZDbZXfTY80nSrCSpuRi+6UtXbN9FAx45PafON+N5S1/ena7
sNUBxnDPrBxJm0XhhN8nTtdK9OuYVLSu0Q4RvXeoqQOm8IP9TVWW/kdcBTjMpwtrSoyHD+wxbRw7
wMwv47ey+IxV/usZfRKh/6i21NVcXpPi+f0CEdDVu1fqfxPS4dHpZSlYzXsc0f9yLtxFXvroRXBt
3G/e5owq9wi4mQ+iviV2iH9W9BhZ7PlOIH/n1SLxobuy4tuZur9yZfTxsaKAke0qMBc1qzXJ1Sql
t1M8Uvm3e+E/VCbLsokPxVfgHvkmL1XKYhLOFc5Hej5Pl5+1WyXVCgzHn+VafeRiT/2eKc2e0FuA
p0sWt1NDP7MfKp2WjOeN5Xd7ir7LXVkXEGVIlfPxy3tqhvNzphJDXWrJkjN224QjSQIXXPfE+E+T
l9ZDlwphKGVSFl95YX7P2nBlE08jX7uoGu7MpDW+onHlD83BfyQEaAFCMtOrttnCYUgj4WfwwxyP
nz1/eFrshq6zTkFtarQWI4ygPPfJ31a5xamtNjkHZgzeMEW3MYtLhgy1OnR9ecENDOTxD4ggVXJW
1ran+RMCvhUqNmMRG2Oc8V4cQ/t4QdToiUI86aKPeP43fFW581gWt0CPaM7BQ5486UdRadRaj7Ob
B2Dk8r4rL8wi7HircNG4hsu/yal9rTqDGrg3X/aJhm2ZlrhBBTNVQSel8oC8EVA1cOStgQ2vv+jz
pBorn987km5PEAsQF0uzHRztvm+iU5au7VTWsuSoqrnnO7D70TfhjkhyNVpvcvlR7hW0B5uwKP8Y
xv/P87QYtkx1hB6Y2ApHg22QLFeLgg/Dw8CudCpMOE+1KcnAY6xlbzX7RhRWSF181K8L38plVSo/
8h61l+aX5dHDUl3YoC+B9P8DFIv+xVDCkeCDh0SZ4srPX1V47saoRzqLSqExC/4mm2yZ2koFv8Ux
ZSXMERvPFdCCzNlGzuOE0OgdKut9CnY9ex1RzGGGJ/sbVlE13CnxYCrcDiiPAqRJ0aobwK/NypSh
hTbYTYcQzA0MCU/of1gS1RBvvW16e50Daqgv4Sr8k/ca/dkSESHQFvZKoKAjTHURySpgN+fDONqg
VRwZ9OaJURGiZ63PyiOx+1d4lm0h78Av41RdIM4irf+0mPzOvtUoOnbV6kAKYr6Kg2ecl1UuZwGe
YX4jqZ57bt9vU7rTN1aY651ix/0V9wPP+XoIRoIMGqbjn6iwFS6V2UcxKf4mr++l0rvMUtiHycYZ
hgHGtJo4edZdXOD21ejySvRgMNr2t9XiV8+qvQLt5IEIDitj9JqLyQBgRjzsXlRMSPKXzBkO202q
1qCa0GoRlSdXycjECV9MjN0RPx2UL29UFxtpVYxikmuW1lk+sYwaEp+wxjdQBjizLP9IZ9nbOIeP
wQR4GYFBQpXNK/4KpZQZLn0BC+IpSXbLo7/Lh4mCecfCddkhG3t+dsjoDNseZQvdDfos4pnWycB6
/WKRzG604Uvw0jOghCfosA9d27KBnI9INJMyfVPSq5GRsuAUyZcig+wKHjRxGvl4w3VWjm8c0jLW
BpNUdndPnwuPnAyHulwyKLZ3IuIMNW9o7moh9pomdcmlsLZg9WCisIWLrqyXgoNu9ZZido6WtGR1
YY2tjELgaGWTpTGLAIYt1RoU81rzdnCiOY0dzPpCSePe4MSsi85YKrY/VJoS8IthCl7WUR2FQurQ
LsIxsplnmNdaq3C8a5ahnCRFv0ADqdd8FeWIbwXqqimXpgNgmyORyV4/CykL0S6XkdFaznY0FveX
OaGyc2m0KSkySwaJj6xOwtc56BUDkNnzcl/v8Kms0LBxH/Se+6mYtsrr1Kdw+uQVQ2OyJzPDM42G
KUyU8OeopgiBX9/oQdw/BMH1Jz977AoOigJcoPHX9FuFEBzXuWioTNwR0BEoe58fJlZvP1VqfBmf
3+U18UMZGX5aIMJL2BrLfzK73iEB3SQ/JUWlzV0ydWrvT2RwYFODC6TpjMrHzyX4OqUihhfOxi0f
heHZ4Nj1FUFXOwWOwpXPQ+mFK/ZEceK+Ucep/aXZQWj16hh/ln28vDuk/ZS6ix2z++aR3+Hv41cS
P6PHi5B4oWYWOgB1jRpQmZf4v8Al8EeJ8ohce6AIF/nUi36fZlDpQ9z+vnOt9qgphxjcRNX8rGj1
MUTVUSO/k5BkhuPgUIY/058K5dyxI8sq32XBklIBFxT9OpIL2yx03H17102Cen3gGm8W959dQOHY
3ViZ7liYMGn1wP8sBx61LKm/8yhsWnooQcbrQDfwyfq0FKu+c3Uc/9v2Fp9dC8kGUZLfAdxDjd8u
/jpGmNgJVlc1FP/0vWhWu+g496/giO+dm+0efNbvd5x/VlBIMRxgs9yPtZIZnFOtt4d4cmF+Odzf
s9EFewxV8+hnwO+ltDja239WLKsiRdrbk8lHmnzNRHwW2B0ijzDMJBuRJmRpwMWHAXrqHpyabhQz
WK2zfcQZ2d8lhUwr5sjuuQy3ljpy4ZUbGY/GtEJibSg5EiRXecA4zQq/S6Ebv1S+HwDqMISAmftm
gzGEcVpbaS3jCo+P/+TxhhzhB35ZAngINteh/KOG98T6nqhPUJ0OtHUFKvhmbni+BcaKhTCEg+Jr
CnfUcHYcVvz38ftCBZnMBEgz47L0MetggSzPW94sGnJwan/uefWbrpjFUEkvcviapPbnTQkoKDqx
Cr9V4HGOenUaiCeYtSfmgugWw2mvESrtfjwsxbjLcbC1xTj4WHT16tuzPbGJAJbUemUjRcvAK/4Y
qCH2Jtv9TGN4eTWfT4+tVCOYxC+fGVk+0xKZesX/YC7T1UxcdnSU6Q9UYvxjJ5esRkw8A7AcNVp0
NCRk3BM8EQ5eY/LdSfY25iwl+KXDwg0eV/LmjHUFxuv9Gx2hab6w1DaepKK3StJhLW1UiyLM7UGG
WQy2k/LlGMwbMJV7ygaSDS24edug3Hqi6jwz2uT8l9stQjLdx/DrJbbAweRzdqhP1FLtCvSAkcjm
xOa0LrnWowp2twG60/2XAuK0SiZ14DpbzeLjXU7dQnIQHjMJh4k7GeIANmJ7Gdzc6qddCwyaUNnG
nz3hCbK57Vrx9vlIioIcwTIviKoE9kPrxq/V7lzNAu5jMpoU5M1H9T54ePtFLlofmFVRs4UV5Qov
b7Ir9sxvmDeZz6C2+1JDKXfprtn2uQVHl36KL5hvX6WoYde5CwR9Co4qsigGFUPbm0+aRmomC036
ekn3JREo2JAzX9+Rx3kN1ixtzs3WDe52+yrNSVMw6JPdycRKAxlQKHiQSCfl7ag8ft3s/sU6yfYW
QpkjlboTGtTmr0ImZSys9eqbLH0Sclp2Wt5AJ5aprJJUjg8dj7ynu+DDbHMNmZzXojiRHSnsBmsg
0rV7vqi9WKkwx7M5jZkulSzGeRcbZADn9sCOHO6CzrW/sF0L52Lfchw7YcPxkHoKn40gTQzJ2H49
1e7EEd5SYM8S1FNJh+SjneYFNSEOJ6V64sDFnKsSuedk7N3bE088SVV7JSEN7z0pMJYc1lDAzOXf
kJL4MJjxj2nG9Jyjy6YtRuBn56L6VFcb3YhpdORzsJg/jzqbOcUb0mO9b+XSvexhQp19B4Yk180c
YxYpRRn9ns67hJB6P4qWwT0btVJYMUvL+cnM0xVFt/EExyXWiIQyBgp2GcoFbHUCDNA3daGG0ysv
AD/C6tcIbfwvmNl96f028KPoaY0hH+2YK1esgyixiV+Om6tbTT1PBVt/AG/xc2tp0hjAIx7s4U7B
dR/xW1gRWuBnqvWrgPqRC84FxQTBl0aOdx81EgbGb+yPY6UI4xL/sqguQoFe6xgrhSUwdYGJmrEl
Bw4zohxIewIBvvHUCfMZ4dpV8geIRBHjgB0ZASmnH4vxFbAsgpTuNKiMvQgl+F/5brJYnciFlrF5
hqGXIxJBXncXs8GKCEmE9Q9bA8CfyqjHuTge28n0qADS4ScKc34NrX/d6/kn06IO3jErjVokfR1J
EPldkRGSXEsNcN9rD400sujesqDlY8u+EknvpUwtG7JRp/0VID+1PqwhhFVEEqSe+n9/eNx/CGwY
6e/ulRl4uSSwlVbRYMQ+XsgM9BsZU1pThVIJtYjHrAhWKbc2HTtx8roHY0DBEDP/JtmeC1N1zJdP
l0AAAvt8K3m+Qp58sxQ31/3/7RHmE1WlfxZ9/gootp1wRjJbCJwSrTe66FE2r1vgDiowdFuRyaVI
33Qm94Sj+o2ClL3NwNyzJSeFCkmo3kGc9WaNM+gggRCFQ+SXMi0mHzxkktTADVJJix2ha9m+T9Rz
754f0+EeHAY1ZUUfgTy62cmgL6Pmmf12sogXf48/PHfn/ER1lvK1XzDB6szneVds6zYIvSUckFVy
SUv6JPvIHyoQ/ffp/CSBO8oRoTaNgIKlRgyQXeuEEWv2oiTmxxbgrjH/eHtUqPx53umNrwm5u5D3
SA/r5N57m2xn3tj/5mls8IhZ3jA4eazjZDBlzH5KAk/NS9zgHoHa7zoKkRtdafba80UYSNdHqAC1
92ClKb1VSIZBCw1FjVJdnIF6iCxcsOZ9UBuT6LpIq3Dhz6IRqXAa9w+XJc5Dr9RiKkGlq1H184Oi
Aecv4NUUfOWiW5p1nzUVFRKJlND30ZmLSj+ueQG+v2d6+C3oJAifygYPL91+nBMO7v7I1gbGU0oR
2sBmbEP9wguct6vy21zcew+FckfmXJlrXFsLrb99HtvSmax/Pn2He7fAlLlgOABV3GQso2DdGddJ
UDgi1iwlLusbicb4sDr4ORgLlXyG3EzYvpggsyYABgM1pbgwKkYg3Fh7xYntSOfikCBr2gAJy7OB
+CjFAlEMyoJspqZW/wbaVd4yWeDJ3Xiap3Uw8KUVtxIDzxnuvul7PgYdqTs5JwC/ikEAzI2adlwD
Gcur7fDNWbn7E9ztpEjL8DjoY3iS+etvTslxcFl3xP3csWYqdC4O+6B6I7BF3M2m03KNQQ/Hqqbd
8yMTgixch60ofmu9OOMYHhovj3wsw/igI+YybcO/4SPf0mc+nCN0952NeNHJfvvQzNMbXnwpPFmc
bla5aBDUJ3N/M3n1EcEI0LZg91CUy1JyQzeEZshwwruj0Rpus5ImBUG+l4waPQ3wJtMC0vAzAMko
VLrsnXjKVESRHVjyE8pHu3kUUEFOEWumL8F/XvxSyFMZxOHx05UtDB9BVtgl3W+SVNRgieu+9UDH
z5aGc1eZk4OBHz4qE1T6UO7ccwN1uO7BIVzL3904LKX8HqdQQy3qfKybgos7RtUxX0A82dOfqg09
B3PBWcyh+Bzxg+K/hUUTB3euVy+JHmGKCDalj/CNvM50zuLNHn2bnz2D8B4s6g+cFtJIu5fKZd3b
iBawWebqhXu7Ta+jhDNsCY+4pD7Wsp/gW88TUl+CPWz+YNut0Tvz5ASHvlb/YvNU0PKN0pyTfEk/
wIcQHEYPkaAloiV+RBjLdc+ZtKVnf6CrUCv/BoRXjVdxS5ZnWZKHHI5TP3tMqNlrsy8BLBVNOIuP
xVednfst8u6N3RF3ZCOAeYdBfC0dWrHUDavazshtcRYIF0OIj1UWYsCPfmoU8PSvsEX4s71AYvcl
N+a7MHQ51gMZBy4xN+UkGH6lSo2TYeuyugv914vqe0L/c1mqcN6g2u2gCwkjODgNhq/9hnd2DDcG
F1rjXbE2clYPSOlwCkghBITa41LH/FXYLy28fpcBxnyxsl7WdNbHVfnUpzwOSLH0p9MVtdBJoiAO
YVKZV1ymJq07iIGRH/Ojz+XAraXINR7fAmt3jxhPsJfOCzm8SVRX0RcCJRLYV/tNEFt61EyD7ay6
dthg23R1WQtSiZsHlizyJY3Y9YJjADbBnKf8WtjfFffjZ4aTDd0x6K6nS7y1hzf/WhhW2vkH8jH/
ZEqpgnC2mv9+Kj1bow0UpP6OyhbyTJtBOmlgmlz4wnTIdBS/YkisHro2hVYS7S4WIIFXm3HDLNZl
4UNNZyRUKT5tRul800TENElr94qDmX/itmHjGFyexsDmoNPfsl5YeexkYylLoalmPHmJiP2ZdGrT
2c7Gasq5fkOnjCLs8d0rNgaLXuzPmoCXov8EXvbPOBk8HmKAF7acBa4Ky8Se/aOKLDlrtp6hbNhI
H5MyFVT8LoVgdBFitYd4sXoTmKRIpSKtqowC30tNmOutGo0pia+9hNd9bEroID6Kj/7UdPq4TuZQ
NryqfjOWRTLgG7UAQ3U8+CntyE7xEzcXgEFlEhSxhZYhyjuiJYHTBzfsPue26VfW34ek7d/i2VPL
OMh3SUhdP4oCAX6W7ox5qD0haLPy6MlikxFVq5qdOmZC2t6VcZZqPXM3cni1RpzpMY6ytyeiiiqd
+chTTpCGn+0YnNyYi6ggk6L8IYhogkHCaizaAeMWAkmjOyHPlE5vbsv9iM9PpGCxePGLXkgYe0iu
OLg18jcsg/8rtFfpbz/N9yCKeqnG06BiJr/1xUi957H5wWpKuGBRHoI4hrzE/RpHBzg+SP+Ncj9Q
PrCT29tff0HHw2UHZZK0nWZWT5Npj9uDFCj68MB+KiKR/Z4g7xWEISf0iOJkGfnVOC3D7CFS1qm0
ocgmVa5fuoEsE9y/srfHzqYKo0oiayHyKnPjJHRZGEMeuA8TDngINBjS1pSohXYymhOx/wlYMTII
mE71t/1n94clpN7QV7jzO+JDVWye6mCqk+xF68EGXDDF4c7EAmYozAbOH7tGZLclUR4bgre6oLGw
GOQVMBYN/Ud1B64onMRmNMeXKAk7/F9HvhJpBRdqwy8GSOYdWPRG1NHZDG4E/A/MxMeZGlzwK6LF
ewdxJefuaoxk/G9nJg8A8vQnisaoRM5hTozloB3aJzA0v1+UrEplPll1EisgFtznNnSif/18r8Tj
t1xPpfFOoTo5zxNsGZf/NtMEHHbijro0m2uYs2F+6xLY0nLb0oZWetedFNZtOl1LtbI5nGYjPrmv
S2V9H/iYNhJ9d7m06jzIHT/8sxeJf4EwrMvVL0AASk2ITHD6KSegiJ0A2LTG9ZOFsfp/MRaw2u6b
+uuzU0bZG81sv4YVfkT/MasSvWjtLUFeDZquTXGizYXpnG1eq3YvlRbBCqyABr8g8m4DEhrKmuDy
e1i9nqurJc9EODq52R5+DoBFhj815D+x+FiW3rNRjp5HXaxt4u2ki3tK4WfJT6GajzbEV0i/wHLE
BaR8+oCj5jK9eP7an8H8I32N4o6p7Ce/ymIDQSAk0tu3YBOUJctt429t8MCSJ+3i8cmCAQPdBZke
viiQrpP2BS1BuCRc6wASa71FuhDKG3bwsslMqB7HVg2BOM1fSQ+cPUcZjyMrmvyzoIPIL47HfyKc
Ge33Ol++ek0KJ/2ZMt6DtNOHWaETTMSk9sqUuUq25Q420cOqqTH+EZO80P0SDcNusONKFccyykKd
jeSnkrAUeva2bH/fKMQGmsTmUIGu25mDJRCv2WmqSsnGLE6YQiFciSVxhEN5KqGhiILZ0TwqH1ZS
5oZnQnfzorxSGDYh9pJO8h/qUpYKHK4XPbCpQXqvJ7teX7QNzj/Tc6cO1NJLceEfdQLLpPLDvV48
thvkV4DABXwPVHqgFOR2XmCj8XGlzNmckNwbeosxVOEDyw/4zddtMBtRN9PbXs8pCQPQD6KcUkgl
jVSiAhzb2dLhKYZ8PRzXUemYgE+ZwpSgRI9eAM/qjb+OUSjIhwFGANCqjGlUhHpVnvfurXadLscD
d8Jo4IOp+tS//qgnz5hb9sGXDhMNbSvbB5ujvk9NIiixLZHjtPqGQKzsb3bZ43E0xwOpQxacGdci
DS+vdFjNrNw/F25DA7IVA1P6nK9BYlyc7Tu4u056i9g/z/3EkbO4mDndgO2krNsrYYMuYClNLfxB
Y08vfmJvNX+0ndFxpINzEKcbPi5KQKFEWErNy+UhYd0/FwJ30xPu6Af5zqDjJkyqxo7gbXVC0cwF
kkTTRttgAOQIX8IQGWHuDcfW8h+JQm8utP/WUF3GWcszLkJaj8h+JosPip4bw9RYAV9HWzB9GBhV
WmGBbpXTEwUKbf3LmWSFkld9Nq2LRzAbpcyq/TKvRZPuZUXAmquVFpf6xZc34cpCRV2PqtKfyC7o
XzeEXGO02/J8JOMGHLKsiEwvQuR+N9z5xzazoM0lsDDBr/+3jy4vEhhq3JMfWI0sfrLA7m525uDN
gzCy1hXnJ3xPNLrNmgpKYUWgxpi4PK/B8mkARmY9jiBGFT7CMQD8xVKZxHsqNBPXWKbJahRXtLep
idrJWmrUd52t0QzjvRPIpdt8rn4EIWSuiNWlOVk02JQpkqGjIwYGMbkosNPJKYNEMab8v6Mw0nX2
EaeJ31aMKMTsJ1mCLojQO8YHP72q5hAxxTksjcXJd/4ir/XQVk1UPqkuvsucjEWN0du9c4MFNAvA
xeM+4rzX7Uqx1nRcmDCji2iXTCwNm88GJ/f6wg+2Opv8F4VAFW8inTe9Z8L2unLKaEZlX9cspTwi
I6+91uLPYS1AC4bOCCEacgx35KGgQ/fqPlS4fw4j0ZWW4aPxZXIfbNc4G1RyjwQO+YMk+goVrUjt
k3TqcXL6LwzuNV9m8SA26NzHMbku/eL5Q76KtD2eG+2l6YCU9G30IZMlTKy5ud1cq0IYXAwHdTm2
mGprkp7x3wAFMWifwLEmlfihZ3B5Szi3uXlN7js3Y64VVbgPUBYVxNxinfqDwDox1XKIoODORP/z
gYhCoytbuQHklkaBvw86PHGW4f3DxKdIav8rUu/N/GYgTwBvGFmzqYMRoJCxy+ctenmUKA9iSJa1
m8Gz1X30khwLBHuIDHruxcDKQzNNVUKphu5t0OOutfkB/V0reJO0Mo7xxZ/GRG8KI4xSrCLEIKvM
5rah3m4m1wc8rnOSZD6GkwBDFT5mTeKbeW21cLTuUMpUV2tsZv/G84+BFdA1krwlapICDYCV6ZO0
dK2v/8fK6J3wCvuXzWgEgTJqcMvnNJBN8jTmsvcfc43uqU+y8rLHHriXks7XZ6+7aPhCsPE3uKxg
9B2Xtm6D1yqqAGVzoxUNZMgNp788BEDhtx3gOLTqCguOKtVkfgDce4zmOUhOLEM+TQtyL6Oix/xb
MkJ34+AMVXts8E1z9vHP4ohn2cNgGYEsYwpNdUk52C5Sck867V//R4lxLEGtH07plGHRV2sUKKda
4EnqryayiSztyr8113pe9WTEUsy/3YIWuHEzXWiBTx7Q846rVpQ0KtuRZ5wBXySUhhZNNd1F4yCt
J8k1FwMaVgznd7iaKSYlvXGdcOY+/LFCvMVuxVytrzYLYcDK27aBtZGyvzQpJHfSjyfU3WXpRQZ3
xgLV35d4cC+c8+oNC+Ab1q7yE3a0j1BBI0MI2BVtkUP5P4B/M5K7TnW7Ms5v5xEERQfPTY6dc2+r
ztg/F7Bpvyb+J/e2rQE8o/t8howp7T9TMisV1hLdpLKVT2KQytlWKwYuIiO4JKvbg99/fpdxfQHZ
6mWGPHGvm7V3XxOzzKhF+BXVnnf8noh9KbkZ9HO4Z7DIercKZ7MaoaWV//BiSL5yCpU4yxUDgwaM
5S+mSAxM2Gs0/XQxPlGRoHbUtOEULMYypdpHYIrnS/3IOgvpRvKHJNvfMCGMHEnyEH6xT0FT0oWi
OloMiZS8aMYBYA3Blk7NByoOsKqrmwscHQKm3JJ/8rEukOlkABUQD7VQoe8tyxhfxgv27uLjxQX5
zTRC0+3H2mOZWJkBK5Mv9Bn5ZP24w46mSU5krmBC1cTrxr81XUi2csW8Nvl8n+q99GXfsseuXg+f
HitTSCr9fP+E9LWhfWH8ppafiSdAsvgs7rElcbgG0IkCTVOD50ICqhOPwhlzKlYfp5FShW7IryZ8
Xc9ORAtKMb+cZGnpW9PmwRBFhjITzs9FBH/CmqrVp0kv5rI933dHecqVuzkGv2u44GNXHnDZEn9g
WfqAK5Jr5FhyM+eILqfksJCeTq6vMaSInDV4wYJpR+nYqjjux7Zl0POMhaBVnM3jQ745xE12mqHt
uvsHzrDJIqZHe0yjKmMcGWrLmmrbXXx677Yo3B/R/HJsEqXtAxM2AamnBZRF3r67+R/iqRnmpbQy
nLV+ngrY8wuBe5bKGKSCl7OLQIgw1NHpqTXEPhi1EgblPTwT2h+FaivjywUNyd0qOG2R6iHaiSc/
R+1GX55BbLoP9D0BTcDqsm6HsMEeRuuTWqAdDB21mCc5B/y4de18fTW5hCgufmLyP4U4oRKSE6V7
DeEJLfhrzGVal8xRrKrrW/MXqakHVc6klisucsezvCZugEAT6garjxu4K+CNUdtAG7jn3U9Z2nS+
kR1Xp2nVnUsvaqmHbuCmaBEHJWX6dK2HYO963QfhHMbeE907xVXPdpkmt+w5pqa2HsgjDxyaJ37T
229PgDWqVOMcV+qNyo2Y5CtGIjuqUE9AuIJLHWofqrZX95PHp8fgFobdSHU2c8fNq7i1Q0x+Fh2K
rRq40uNdRXBrSKhWbPlG2ijCdlJ44Cx+Gmlf3DOc2s9LwrpUIu5k8vwlpc9Rj32nwhaZ6o/PIvWR
rsH7VMZxhTiLhMv/8Xa3sgNwtETPD0es2c7DlHvvqzLDFEM2etcAQBB0t2IjNd8ER+l1dbESJdli
dntFbHwUviUbk4nxtEhCRKIZpN6yExELJscrL3GzclE2a2tOCix3URZOHCVVYdVLiYdNcTOX/IBt
hYnVUtkAtlFiw1L0Uutn//NsCg2R/EnFcCopAaOtUxUQx/aNpJF4F8YQYyPQciFqheuHrKORAfEQ
tqliJn2W6/fUgPLb+Ipj4vmCEzCl25he+LIuZmX8jXCgowhd4vvgCb1VTidzsRc74WmBf3Gmiwmn
Y3mgQ/PihnGpsQ5COiCtu6g21Tbv+g9sXYnHBlIZw4GizVTjiOdNTpL6nIO9akJe4U7Jz14fm9TS
/ZLAXmM+DTfwkEYnPvAghKVZVZZBOV9QfJkleOnnqLzYalfH4m6+z3iYQMIkn9OzFIBB9JicdQJL
ECWsPneeza6a8VZeXiUUikiwz8054NPLZ0a4kogKW/kA/JHaj7VYcrDLg8OrvBAP85mpAZ5Us9Wr
a7kwmy4IAcvzvoMSjs6eH9oTVJd8OlXqNUGzbpce4A7r+6Y0f1Bo10J2XrLr4xY/ECUY+RAc+7Lo
y2E69D9mZuWS4Mjkhm2o8wNjTdrfG1Qzpzhfg8HQiucwvCXVtiB7LFFiVNOLBN95RJ/qb9PZ+eIi
aKXRv5JkWfZnnFauVhj5eWO/gEtsZuiJEk+ovfWgdYIt4T7oQISYHXZhyDZ6uCdORcWmsGkdEeA7
WxuOceDgEa3DCdPlPKN+8Lddsra3j7XfA2MexmU58RbChFhf1VeeRDhlB/dvD2e5m2pmXumzvcKQ
8Bc0IxYGTpPeXqdmMMs+RKEbQFbWymFhjraVTJni8ScK7rD5Rv5kPofFqRtVMlP4jkVtVNeDjFfL
wwnOVoXsANDAiklDCjln3W/HepTmwDAg+gu1LhNtiHzp6S4JxemuUoAiD7ICBU/WmzXS50FQJKjF
31YV05fCrhThBkgD2ZiKo/GgjmGprm11hkfGeIPVbZbuo3zv9md1ZJUeJvUmKze+sBph4IzzJX8j
6CuVv5MSLOYAsl5bh91OHn1qy4vIxrq4HDtLpPgjwPjLdrHC9PWBNsGUQTRcAp5DgLelaarkMYhj
3l/DIIHwztwq+ezTB64nVS0XR9NQuoaD7QgD66ndp+o5Ww8RrANb+aPmzoXFYS06aFPjJoKiZWQT
xpTs4gRHAEoq6Cc3GfZQlsDwLKA5kfHK13JeNyKSfgJhGKtGfab4/cpNasdjbHNoSClDsZ1jKELw
x/LGZ+1vbhXCnETsdvZL1nrTSX2mOUOc38b29ilmCoEWzOz6MMupp66NQ0mCkixzwrmL8BYDDIFI
0b7fSZBrLtE+DR/UvII+pfl0NDY9DdRo9fm+H9oDc+RXlHufeA5wTgLY2xK3CNK//GVlF37qP04x
YnUvXVqpqnmFrEU5COio9I6106qatGJIRO8/GA6+Qg7pyYpwNjIzAFWiIXghD6iYGEnydZOeeAyh
vc9qMeGMcRgFaWDGz6F4ELzirJFLe+K28ifhyQChU31DaHg4fTaYK4agOgKEQs0zloYF46hhUR52
obUfgPjzLxaicGDBqsh4xZ6iVrKp8S0/xfmDLL31ewE15fkEMhtKhXeJCifbhpCYlm6glwhzOch0
uzQGWyt0aa+HOnkGNhzQy3KlDaraNZDYJi5CjmlOn1JChV32V3cgrohr48GD0G9wmCbdVwVx2TkW
FZP4x4OAZogkGhgiom2tBrLAgiwytMqQScmmRNwCcBrkA6d/X9Liwj9Da34gHDgGnOvEJxBXZ3p4
X1wvKmM1oUI1URW3ySVIxjovYa8wncWJaptUVdtKDVsbKAHcubzuoB9kagXSa9VoBZo2Fmel76ST
40x6UciOaPHDNMGYMt3O0Z1inJfxvMLuCv+vL4z74VukTEFRxvtrqZvyXhdUnMCXXgnWEaVswE3r
/AHvrEHLBBUqinNqq6YK8XGZjm6/2KKqyUtBrGDE7+a/6i5OADZ3xu9rUDddRZHN7yHPgJJSKy+D
WA5BSEbOyUGpgO4o6TvzeKCFJKI5m2DLt2V2IGsloY/vr4qGdgVSICqi1cYqJA5X+Wa7hH58wwxZ
dMdyMsJp/M+rawtJ7TRRarBhK9X3z1Owe8XO/CpEFDDUqbxKLHMqW/ae0W6HZFu3CgAKaUgogPfU
9nMvkoh1V4YRKRjNsf3VyCOnEhHECIwXOvOYlIHI7CCzFoyjDfVXmxnQANujyo6YusrHZ6lXlNbI
y9eG9FTIDvaXaO3RdEeYimzmyw8GiXX18jMfiV61Bn0HHn72+H75kC5TAtkwn1ZiZAho25eYFjci
FvnR5xgg5shY6r2E+qxagVXnrLTqAtCCkF268F7qRglZJgLgz2ToTzcEB8gzWxAtEpQgqXCF1/wp
o5XoZFYITJI/RTk+3Fer4Zz71qHzitj8HijSjq/ChYWaf88LIe4OqKmRsFziLDM1FHGUqmolIhZ7
o8dZr5Ko3XGpugAZw+jZXdO3ZSjfr4kB+PoFlTcuFA1CsZmHvy/rHlRwtV0TR7pSP5FqZVbSn/wg
dWR00jpDLEu2UlvOsae4/QJZ3NmNbXMjGbBbe6mZXuSZHIo25dgMhOzJRnM1XAHHQLToUurduWQn
3bfW2a1FwOsbjjUGZ0dWFdrFJWF1HO3qOTzqUYuv+5tXq3EmiQUndlFvkHtVG9gw9KqlGmvK6MxQ
PfbqUNTuSMjKae5i7xN6+LPdeUV4OnzJx8XgBcgvN1ZxIeOVSt1QhFElQqT4o6pHCOhumlNzXZmJ
Om1C6xZuiAYjkDIgf5R42xJHMGdZ0DXpr+a/mDS8zceiwI6XTT+H0eLafTrkxPFpVdLULhzo7eWK
CkTS+fz/fYJvtXD8mSDUWEGM/S6Pyp5IN/PTDjxc3eP9AFH5cGaAb+jEPZ9IViSg43VcpfKMBbfw
l263BAS0iUVIrmLQQOU4csFJoGtMea22z8o1Wfx7zw/EbWqLs0gpoAy8RORZ7EtIzPG8924ffyMO
O60mD5855wHfhUE44ONCY8Jna3pBdAohrmq62mTg/vFqURTkPx1blmH7jjkmDNBFSZm0uaIq8xm5
kaVzp6TI12hoqffl/6oAw9je2HH5vBvz/Yj/VAz7VIQ0T1YhAuurCCajJP0RjkAjUbPscVAKKfFD
YR5gkN61OoViKVRPt63vVOVaLqup4HBv4DTgb7qMfpIUi3+9W0WhNhqHihcVqlv8USkYJ7Rhz/e/
KcHi4wr6MUxm7IyBcYxhjMejZ0dDqF+A70CIY8q+cvXgDyNtAdyhC6e6eVWii+RGYBzEG3+3LakP
JC2Op0XQVqKN7n1voxm849Rh1eLNAsX92Qd/br2iESi6yVg4BbeGlfNnbv0QDMFJBxWpRMTEip2x
zy4pX6ZMOju99g1SaqwDStPdUc1jog0ctfviLriX9RquPBKEhx2YNDHsB1sJ/wNBTC9Sh8w1WFSy
D8y9XWqV9QdA4mMJXJK0LgQPtv25ZjX/0CGyOYEgWXtuJlGV7GCDWzkIsatYMkrxa8OouUXSCA23
Z19+qmanKz8vhGnbqJybLRrWW3GJHWL0lARKGaLCac9zzWBieYYaFpA11uMXe+GJXOcWWk8EalIJ
/+4ugfTcj9jxTxa7K9HKbHqGm+U4A/rDDLBodOUVz8U+e0fvM2Vfxo4jXHkX7laWD9dNsK242q3B
+dPdd2QYQ9N/IdHUzYzmyTpLr0VZw6gj3Um0BtQb5BD3Lmnfo1jQMr0Kpj8KGVFerc8wVCgNPs/M
fF7kcIu5jTyOkCIwm/UyytmP8jLVJvfIpHLc/2qZ6OUeiTbTnZUTKqrqI90q2YmMcZ4L8AEyfTRT
hRAjZQpYuGpK0RqXoqlwIF882Qrd4ClUKYh5GHEolGTnnpq77xun6zbgbTxxbXd1fu6yOTFc+KUV
tZLGM0r0CUrnhDOnaIh8kA9h9xCOOWJbxfDJiZDpcglqpqnYZH1S5PZOOuDSm6owRRjdChobNxYf
xqtyskxEQUejaYtGDan0iFBU33OtYFwlQZPwSwQplixtdxOaIXVQm3EcaX0EfPrTxJvDKwtn9oV4
8OmLzwVY0KumHZqRyAd0hAniDk0JZCxpxW60mO6XzXHXRXzrsElJQAs1wKLOvAgesbtrDhCiidII
dCitjU/CNP1AcdzSja/vXcxmMqyfvnOrJBCkLF1JIgOCkYS+696OjVxc32pe+RDfckumIsA1WvMa
DkIfYacahIvj8SdgION6rPzkCDPFRIvL7OOX7hgRXqF6twUBP3dgqNB9EH1bc71kOKXl2AVaGC0i
OwlDxNdHgkxYCDvRBe5bziLuvp8vrJkn5P9YLtDeHl06aj5Pn9ZujO4IAVeuUYDgM1Uz1mhPzFy4
xWaLMYoVQV1CtIO9flXrP4wC3F4/WwVOktTX7LuR2OA7l72sXYBbngXJqeHQpnqXBZkKgexqG+tS
I4uvhqV/7eniLusTnQK0EEKD/TonMjri2ICqNx8QiXaPENgEagmcQl7ApnBOpFrV2nAE2y9M+NNu
fsuXfOe94tjcSrPTHW8gsQwHtliG6x0sjD9bWVH8zl/Ipi5/t3dD6nSzDOe5ml8K0ZqjCz9B+hGc
20s7E/oXmtHsHDuCXEamqsU8s9AVz0En6NwtsQXnmoC9q6RVv/F/V8RAuj+YO9T5evAkrAoEfSVG
BPLDS+4CVBNqLKb3D7Gj1V+guJgLpgmmJ9cDZmj7fS+HfJxSJ7Fe1A7fRIRwmFTW4YyVGa/tEUsv
IdH0ZsSgVJogJFRgr2sf/GNnLA8PI1yJnnYhlhJcxeZcKlkcfPwHaCWZbLnMx/nZ64o7sj4U3nsM
y891idUqvf7/M2Y4PlBLxddLRPX82e/9FcI69jwbbTLfxJwQX/Q4eURIaBCm1W42Rh80YCiJEtph
+dxVRJSNUBPwcOQ7yoXSmR+rexnKlpqJIeXtfG10BrwnFyN0J8u2uNXedM2wG+3M36ourbNZXuWj
v+vSDU0rFhTJ1yhvIxQeKskXi/2+YtJJW0r3F5qEFErXbA2hEbIAiYIvPZrSuyD37as2epWFRfsY
uUg55lLVuK0UdGQi4N9olJQuHSRZkm/vKMFU/V/vfDZ2vrVvxBzqpWBhBPkddekKQ5MTyx9E7D2N
Hzh2acv7xhWaxLuAi0vSzHAxure96uVQxxHLipCo3OMZIjVySYErqZIIFHXrIS65fGjw2E7MHcHK
pbYW8BGKKGNClo/FiEJaX0wU0kD+lesgPJi+fJEy9OG4tlCZm/v5KM7iNY93ft9iBn+5zhJWiJ0/
JGZjigpWFOTgNLQ+M00awF7crxqk6z1c+rTroVC3DDbnbKPFyp3tSJZZ5sx5G+IcPvpS5A4ZO3h7
AoigjeCelp3Qn5hqC8W7qQs7ZL4RY4/kBRkARd80WWRgEf3TiclWN55FcLJGw+OA0ZGyQlVljvy5
SavLgs8J2W/WJqlJu+kv1KcBwdqoiWvGWTL96kCusXUlyp5uwOM3tFzMiNNtfIwOqbs188PThIN1
hcL0N1d478J7qfclAAoc9OKv6BL3sRn2mrP91D/MdWC5ZAQ6pzpMLfy9IeogHKcT4R3rYtgeCebb
i68Qy/1jq2xCClGWQUk9fR/POsDiyh0Xd0zqzHltTlrnHdNsh8qAg4MuBLEnLbKsSKgoJkwBQu5Z
KWUqbpRyXHnx6fVbHLFPB2U7SGZWWv7cRhRmmcEUKIOJyK10LsWiIWTEmg5475O5q4rgES0/Veg/
Ui+Qk4NguAejmo/LAbGsXpfyLRzQSOX6sPlb/B9UqwFNucrmTX5LwnkVzj8EUdhsHleYfbAcPWyl
jQ+YRildxVD1mEf0vW7d88QizE6/vB/wUev+vZl5415yFd4CGGBnSKVoy+v3TmhArnJADVJIVQ2x
ZzfP6T7lCRZGoJmYkP0fXy2c2TuA9zW7aqpMW3QUuRtgI4vmK2Z9hi4APv6gaPMq3Rywu4FEENS8
PJxoAJI+sZyMpUPIFs9rNe7jt3/536oX8La321CY2LQoBy6jM0aS3lbpivsqMCAzmUKwfWjpGBPS
gQY1HSTacNF8T8gI8SWZKJ8f7GA0yjnNaAFLqhYm51KB/TxMYFzeIVLV6SWDsgiQFiClR0Gmikgz
yQqbXS33oOegjLaPNan9wR9ixhfjz5N7OFXD15MuFtQEVVR9QGXZgdcVD155TzKnIggOz5NpDy/8
wx71OibyH836lvQYxsekmTFijoYermuC5NYkJsUJMGCz+cfZdU3zuqWwSTfJpgU6Xw==
=======
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
>>>>>>> LUTBugFixBen
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
