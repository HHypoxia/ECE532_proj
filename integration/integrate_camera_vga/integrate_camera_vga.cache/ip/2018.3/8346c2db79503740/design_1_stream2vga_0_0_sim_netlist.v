// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 16 17:44:25 2025
// Host        : gougou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_stream2vga_0_0_sim_netlist.v
// Design      : design_1_stream2vga_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_stream_to_vga_12bit
   (pix_b,
    pix_g,
    pix_r,
    hsync,
    vsync,
    clk,
    tdata);
  output [3:0]pix_b;
  output [3:0]pix_g;
  output [3:0]pix_r;
  output hsync;
  output vsync;
  input clk;
  input [11:0]tdata;

  wire clk;
  wire hsync;
  wire [3:0]pix_b;
  wire [3:0]pix_g;
  wire [3:0]pix_r;
  wire [11:0]tdata;
  wire vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_out vga_inst
       (.clk(clk),
        .hsync(hsync),
        .pix_b(pix_b),
        .pix_g(pix_g),
        .pix_r(pix_r),
        .tdata(tdata),
        .vsync(vsync));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_stream2vga_0_0,axi_stream_to_vga_12bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_stream_to_vga_12bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    tdata,
    tvalid,
    tready,
    pix_r,
    pix_g,
    pix_b,
    hsync,
    vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S00_SLV, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_SLV TDATA" *) input [16:0]tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_SLV TVALID" *) input tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_SLV TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_SLV, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output tready;
  output [3:0]pix_r;
  output [3:0]pix_g;
  output [3:0]pix_b;
  output hsync;
  output vsync;

  wire \<const1> ;
  wire clk;
  wire hsync;
  wire [3:0]pix_b;
  wire [3:0]pix_g;
  wire [3:0]pix_r;
  wire [16:0]tdata;
  wire vsync;

  assign tready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_stream_to_vga_12bit inst
       (.clk(clk),
        .hsync(hsync),
        .pix_b(pix_b),
        .pix_g(pix_g),
        .pix_r(pix_r),
        .tdata(tdata[11:0]),
        .vsync(vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_out
   (pix_b,
    pix_g,
    pix_r,
    hsync,
    vsync,
    clk,
    tdata);
  output [3:0]pix_b;
  output [3:0]pix_g;
  output [3:0]pix_r;
  output hsync;
  output vsync;
  input clk;
  input [11:0]tdata;

  wire clk;
  wire \hcount[10]_i_3_n_0 ;
  wire \hcount[10]_i_4_n_0 ;
  wire \hcount[10]_i_5_n_0 ;
  wire \hcount[10]_i_6_n_0 ;
  wire \hcount[7]_i_2_n_0 ;
  wire [10:0]hcount_reg__0;
  wire hsync;
  wire hsync_INST_0_i_1_n_0;
  wire line_end;
  wire [10:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [3:0]pix_b;
  wire [3:0]pix_g;
  wire [3:0]pix_r;
  wire \pix_r[3]_INST_0_i_1_n_0 ;
  wire \pix_r[3]_INST_0_i_2_n_0 ;
  wire \pix_r[3]_INST_0_i_3_n_0 ;
  wire \pix_r[3]_INST_0_i_4_n_0 ;
  wire \pix_r[3]_INST_0_i_5_n_0 ;
  wire [11:0]tdata;
  wire vcount;
  wire \vcount[6]_i_2_n_0 ;
  wire \vcount[9]_i_3_n_0 ;
  wire \vcount[9]_i_4_n_0 ;
  wire \vcount[9]_i_5_n_0 ;
  wire \vcount[9]_i_6_n_0 ;
  wire [9:0]vcount_reg__0;
  wire vsync;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hcount[0]_i_1 
       (.I0(hcount_reg__0[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \hcount[10]_i_1 
       (.I0(hcount_reg__0[4]),
        .I1(\hcount[10]_i_3_n_0 ),
        .I2(hcount_reg__0[7]),
        .I3(hcount_reg__0[6]),
        .I4(hcount_reg__0[5]),
        .I5(\hcount[10]_i_4_n_0 ),
        .O(line_end));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \hcount[10]_i_2 
       (.I0(hcount_reg__0[10]),
        .I1(hcount_reg__0[5]),
        .I2(hcount_reg__0[6]),
        .I3(\hcount[10]_i_5_n_0 ),
        .I4(\hcount[10]_i_6_n_0 ),
        .I5(hcount_reg__0[9]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \hcount[10]_i_3 
       (.I0(hcount_reg__0[3]),
        .I1(hcount_reg__0[2]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[1]),
        .O(\hcount[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hcount[10]_i_4 
       (.I0(hcount_reg__0[10]),
        .I1(hcount_reg__0[9]),
        .I2(hcount_reg__0[8]),
        .O(\hcount[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \hcount[10]_i_5 
       (.I0(hcount_reg__0[2]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[1]),
        .I3(hcount_reg__0[4]),
        .I4(hcount_reg__0[3]),
        .O(\hcount[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hcount[10]_i_6 
       (.I0(hcount_reg__0[7]),
        .I1(hcount_reg__0[8]),
        .O(\hcount[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount[1]_i_1 
       (.I0(hcount_reg__0[0]),
        .I1(hcount_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount[2]_i_1 
       (.I0(hcount_reg__0[2]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcount[3]_i_1 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[2]),
        .I3(hcount_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hcount[4]_i_1 
       (.I0(hcount_reg__0[4]),
        .I1(hcount_reg__0[1]),
        .I2(hcount_reg__0[0]),
        .I3(hcount_reg__0[2]),
        .I4(hcount_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcount[5]_i_1 
       (.I0(hcount_reg__0[5]),
        .I1(hcount_reg__0[3]),
        .I2(hcount_reg__0[4]),
        .I3(hcount_reg__0[1]),
        .I4(hcount_reg__0[0]),
        .I5(hcount_reg__0[2]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \hcount[6]_i_1 
       (.I0(hcount_reg__0[6]),
        .I1(\hcount[7]_i_2_n_0 ),
        .I2(hcount_reg__0[4]),
        .I3(hcount_reg__0[3]),
        .I4(hcount_reg__0[5]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \hcount[7]_i_1 
       (.I0(hcount_reg__0[7]),
        .I1(hcount_reg__0[5]),
        .I2(hcount_reg__0[6]),
        .I3(\hcount[7]_i_2_n_0 ),
        .I4(hcount_reg__0[4]),
        .I5(hcount_reg__0[3]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \hcount[7]_i_2 
       (.I0(hcount_reg__0[1]),
        .I1(hcount_reg__0[0]),
        .I2(hcount_reg__0[2]),
        .O(\hcount[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hcount[8]_i_1 
       (.I0(hcount_reg__0[8]),
        .I1(hcount_reg__0[7]),
        .I2(\hcount[10]_i_5_n_0 ),
        .I3(hcount_reg__0[6]),
        .I4(hcount_reg__0[5]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcount[9]_i_1 
       (.I0(hcount_reg__0[9]),
        .I1(hcount_reg__0[7]),
        .I2(hcount_reg__0[8]),
        .I3(\hcount[10]_i_5_n_0 ),
        .I4(hcount_reg__0[6]),
        .I5(hcount_reg__0[5]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(hcount_reg__0[0]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(hcount_reg__0[10]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(hcount_reg__0[1]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(hcount_reg__0[2]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(hcount_reg__0[3]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(hcount_reg__0[4]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(hcount_reg__0[5]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(hcount_reg__0[6]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(hcount_reg__0[7]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(hcount_reg__0[8]),
        .R(line_end));
  FDRE #(
    .INIT(1'b0)) 
    \hcount_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(hcount_reg__0[9]),
        .R(line_end));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    hsync_INST_0
       (.I0(hsync_INST_0_i_1_n_0),
        .I1(hcount_reg__0[9]),
        .I2(hcount_reg__0[10]),
        .I3(hcount_reg__0[8]),
        .O(hsync));
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    hsync_INST_0_i_1
       (.I0(hcount_reg__0[5]),
        .I1(hcount_reg__0[6]),
        .I2(hcount_reg__0[3]),
        .I3(hcount_reg__0[4]),
        .I4(hcount_reg__0[7]),
        .O(hsync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_b[0]_INST_0 
       (.I0(tdata[0]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_b[0]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_b[1]_INST_0 
       (.I0(tdata[1]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_b[1]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_b[2]_INST_0 
       (.I0(tdata[2]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_b[2]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_b[3]_INST_0 
       (.I0(tdata[3]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_b[3]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_g[0]_INST_0 
       (.I0(tdata[4]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_g[0]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_g[1]_INST_0 
       (.I0(tdata[5]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_g[1]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_g[2]_INST_0 
       (.I0(tdata[6]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_g[2]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_g[3]_INST_0 
       (.I0(tdata[7]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_g[3]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_r[0]_INST_0 
       (.I0(tdata[8]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_r[0]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_r[1]_INST_0 
       (.I0(tdata[9]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_r[1]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_r[2]_INST_0 
       (.I0(tdata[10]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_r[2]));
  LUT6 #(
    .INIT(64'h008A008A0000008A)) 
    \pix_r[3]_INST_0 
       (.I0(tdata[11]),
        .I1(\pix_r[3]_INST_0_i_1_n_0 ),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(\pix_r[3]_INST_0_i_3_n_0 ),
        .I4(\pix_r[3]_INST_0_i_4_n_0 ),
        .I5(\pix_r[3]_INST_0_i_5_n_0 ),
        .O(pix_r[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pix_r[3]_INST_0_i_1 
       (.I0(vcount_reg__0[6]),
        .I1(vcount_reg__0[5]),
        .I2(vcount_reg__0[7]),
        .I3(vcount_reg__0[9]),
        .I4(vcount_reg__0[8]),
        .O(\pix_r[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pix_r[3]_INST_0_i_2 
       (.I0(vcount_reg__0[0]),
        .I1(vcount_reg__0[1]),
        .I2(vcount_reg__0[2]),
        .I3(vcount_reg__0[3]),
        .I4(vcount_reg__0[4]),
        .O(\pix_r[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF000E00F000F000F)) 
    \pix_r[3]_INST_0_i_3 
       (.I0(hcount_reg__0[6]),
        .I1(hcount_reg__0[5]),
        .I2(hcount_reg__0[9]),
        .I3(hcount_reg__0[10]),
        .I4(hcount_reg__0[7]),
        .I5(hcount_reg__0[8]),
        .O(\pix_r[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \pix_r[3]_INST_0_i_4 
       (.I0(vcount_reg__0[6]),
        .I1(vcount_reg__0[4]),
        .I2(vcount_reg__0[3]),
        .I3(vcount_reg__0[2]),
        .I4(vcount_reg__0[0]),
        .I5(vcount_reg__0[1]),
        .O(\pix_r[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F7F7FFF)) 
    \pix_r[3]_INST_0_i_5 
       (.I0(vcount_reg__0[7]),
        .I1(vcount_reg__0[8]),
        .I2(vcount_reg__0[9]),
        .I3(vcount_reg__0[6]),
        .I4(vcount_reg__0[5]),
        .O(\pix_r[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcount[0]_i_1 
       (.I0(vcount_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount[1]_i_1 
       (.I0(vcount_reg__0[0]),
        .I1(vcount_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcount[2]_i_1 
       (.I0(vcount_reg__0[0]),
        .I1(vcount_reg__0[1]),
        .I2(vcount_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vcount[3]_i_1 
       (.I0(vcount_reg__0[3]),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[1]),
        .I3(vcount_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcount[4]_i_1 
       (.I0(vcount_reg__0[4]),
        .I1(vcount_reg__0[3]),
        .I2(vcount_reg__0[2]),
        .I3(vcount_reg__0[1]),
        .I4(vcount_reg__0[0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcount[5]_i_1 
       (.I0(vcount_reg__0[5]),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[1]),
        .I3(vcount_reg__0[2]),
        .I4(vcount_reg__0[3]),
        .I5(vcount_reg__0[4]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \vcount[6]_i_1 
       (.I0(vcount_reg__0[6]),
        .I1(\vcount[6]_i_2_n_0 ),
        .I2(vcount_reg__0[2]),
        .I3(vcount_reg__0[3]),
        .I4(vcount_reg__0[4]),
        .I5(vcount_reg__0[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vcount[6]_i_2 
       (.I0(vcount_reg__0[0]),
        .I1(vcount_reg__0[1]),
        .O(\vcount[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \vcount[7]_i_1 
       (.I0(vcount_reg__0[7]),
        .I1(vcount_reg__0[5]),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(vcount_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \vcount[8]_i_1 
       (.I0(vcount_reg__0[8]),
        .I1(vcount_reg__0[6]),
        .I2(\pix_r[3]_INST_0_i_2_n_0 ),
        .I3(vcount_reg__0[5]),
        .I4(vcount_reg__0[7]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \vcount[9]_i_1 
       (.I0(\vcount[9]_i_3_n_0 ),
        .I1(\hcount[10]_i_3_n_0 ),
        .I2(hcount_reg__0[4]),
        .I3(\vcount[9]_i_4_n_0 ),
        .I4(\vcount[9]_i_5_n_0 ),
        .I5(\vcount[9]_i_6_n_0 ),
        .O(vcount));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \vcount[9]_i_2 
       (.I0(vcount_reg__0[9]),
        .I1(vcount_reg__0[7]),
        .I2(vcount_reg__0[5]),
        .I3(\pix_r[3]_INST_0_i_2_n_0 ),
        .I4(vcount_reg__0[6]),
        .I5(vcount_reg__0[8]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \vcount[9]_i_3 
       (.I0(hcount_reg__0[8]),
        .I1(hcount_reg__0[9]),
        .I2(hcount_reg__0[10]),
        .I3(hcount_reg__0[5]),
        .I4(hcount_reg__0[6]),
        .I5(hcount_reg__0[7]),
        .O(\vcount[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \vcount[9]_i_4 
       (.I0(vcount_reg__0[4]),
        .I1(vcount_reg__0[3]),
        .I2(vcount_reg__0[2]),
        .O(\vcount[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \vcount[9]_i_5 
       (.I0(vcount_reg__0[1]),
        .I1(vcount_reg__0[0]),
        .I2(vcount_reg__0[5]),
        .I3(vcount_reg__0[6]),
        .O(\vcount[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \vcount[9]_i_6 
       (.I0(vcount_reg__0[9]),
        .I1(vcount_reg__0[8]),
        .I2(vcount_reg__0[7]),
        .O(\vcount[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[0] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[0]),
        .Q(vcount_reg__0[0]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[1] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[1]),
        .Q(vcount_reg__0[1]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[2] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[2]),
        .Q(vcount_reg__0[2]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[3] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[3]),
        .Q(vcount_reg__0[3]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[4] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[4]),
        .Q(vcount_reg__0[4]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[5] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[5]),
        .Q(vcount_reg__0[5]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[6] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[6]),
        .Q(vcount_reg__0[6]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[7] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[7]),
        .Q(vcount_reg__0[7]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[8] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[8]),
        .Q(vcount_reg__0[8]),
        .R(vcount));
  FDRE #(
    .INIT(1'b0)) 
    \vcount_reg[9] 
       (.C(clk),
        .CE(line_end),
        .D(p_0_in__0[9]),
        .Q(vcount_reg__0[9]),
        .R(vcount));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    vsync_INST_0
       (.I0(vcount_reg__0[4]),
        .I1(vcount_reg__0[3]),
        .I2(vcount_reg__0[2]),
        .I3(vcount_reg__0[0]),
        .I4(vcount_reg__0[1]),
        .I5(\pix_r[3]_INST_0_i_1_n_0 ),
        .O(vsync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
