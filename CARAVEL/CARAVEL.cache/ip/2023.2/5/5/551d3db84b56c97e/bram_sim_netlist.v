// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jan 16 12:55:14 2026
// Host        : RHIT-PW01CSXE running 64-bit major release  (build 9200)
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
3GRCvAav
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
