// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri May 22 17:51:23 2026
// Host        : xilinx-2204 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/work/Caravel_NPU_FPGA_2025/CARAVEL/CARAVEL.gen/sources_1/ip/bram/bram_sim_netlist.v
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
