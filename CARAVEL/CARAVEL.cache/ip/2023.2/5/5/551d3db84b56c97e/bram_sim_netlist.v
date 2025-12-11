// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Dec 11 12:17:37 2025
// Host        : RHIT-PW01EG6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_sim_netlist.v
// Design      : bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27936)
`pragma protect data_block
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
Ml/2y3TO
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
