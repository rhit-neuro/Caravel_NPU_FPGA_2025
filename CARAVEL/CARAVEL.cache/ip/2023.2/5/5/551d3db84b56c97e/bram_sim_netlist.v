// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
<<<<<<< HEAD
// Date        : Thu Dec 11 12:17:37 2025
=======
// Date        : Wed Jan 14 23:07:39 2026
>>>>>>> LUTBugFixBen
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
<<<<<<< HEAD
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
Ml/2y3TO
=======
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
U776d7sX
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
