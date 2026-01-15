// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 14 23:07:40 2026
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
