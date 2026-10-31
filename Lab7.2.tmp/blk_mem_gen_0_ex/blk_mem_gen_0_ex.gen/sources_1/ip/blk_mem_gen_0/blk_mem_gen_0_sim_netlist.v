// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  2 13:28:00 2025
// Host        : G14 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/BZ/Desktop/ECE385/ip_repo/hdmi_text_controller_2_0/src/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.698 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1200" *) 
  (* C_READ_DEPTH_B = "1200" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1200" *) 
  (* C_WRITE_DEPTH_B = "1200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47984)
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
