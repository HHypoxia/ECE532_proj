// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 16 17:44:25 2025
// Host        : gougou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_stream2vga_0_0_stub.v
// Design      : design_1_stream2vga_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_stream_to_vga_12bit,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, resetn, tdata, tvalid, tready, pix_r, pix_g, 
  pix_b, hsync, vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,tdata[16:0],tvalid,tready,pix_r[3:0],pix_g[3:0],pix_b[3:0],hsync,vsync" */;
  input clk;
  input resetn;
  input [16:0]tdata;
  input tvalid;
  output tready;
  output [3:0]pix_r;
  output [3:0]pix_g;
  output [3:0]pix_b;
  output hsync;
  output vsync;
endmodule
