// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 14 21:12:06 2026
// Host        : BryceChen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bryce/Documents/Senior_Design/Caravel_NPU_FPGA_2025/CARAVEL/CARAVEL.gen/sources_1/ip/bram/bram_sim_netlist.v
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
