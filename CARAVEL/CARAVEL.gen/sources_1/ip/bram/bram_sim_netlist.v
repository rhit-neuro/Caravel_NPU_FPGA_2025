// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Dec 11 12:17:37 2025
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
