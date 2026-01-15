// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 14 23:07:39 2026
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
U776d7sX
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
