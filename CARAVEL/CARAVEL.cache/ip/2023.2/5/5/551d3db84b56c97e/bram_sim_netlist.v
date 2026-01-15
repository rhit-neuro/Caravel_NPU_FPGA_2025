// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 14 21:12:05 2026
// Host        : BryceChen running 64-bit major release  (build 9200)
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
RsKxRCwE
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
