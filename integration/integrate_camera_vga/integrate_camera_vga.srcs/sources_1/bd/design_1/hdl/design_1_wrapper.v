//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Feb 16 20:09:49 2025
//Host        : gougou running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (hsync_0,
    pix_b_0,
    pix_g_0,
    pix_r_0,
    reset,
    sys_clock,
    vsync_0);
  output hsync_0;
  output [3:0]pix_b_0;
  output [3:0]pix_g_0;
  output [3:0]pix_r_0;
  input reset;
  input sys_clock;
  output vsync_0;

  wire hsync_0;
  wire [3:0]pix_b_0;
  wire [3:0]pix_g_0;
  wire [3:0]pix_r_0;
  wire reset;
  wire sys_clock;
  wire vsync_0;

  design_1 design_1_i
       (.hsync_0(hsync_0),
        .pix_b_0(pix_b_0),
        .pix_g_0(pix_g_0),
        .pix_r_0(pix_r_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .vsync_0(vsync_0));
endmodule
