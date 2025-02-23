//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Feb 16 20:09:49 2025
//Host        : gougou running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=11,da_clkrst_cnt=18,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  output vsync_0;

  wire [15:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_vip_1_M_AXI_ARADDR;
  wire axi_vip_1_M_AXI_ARREADY;
  wire axi_vip_1_M_AXI_ARVALID;
  wire [31:0]axi_vip_1_M_AXI_AWADDR;
  wire axi_vip_1_M_AXI_AWREADY;
  wire axi_vip_1_M_AXI_AWVALID;
  wire axi_vip_1_M_AXI_BREADY;
  wire [1:0]axi_vip_1_M_AXI_BRESP;
  wire axi_vip_1_M_AXI_BVALID;
  wire [31:0]axi_vip_1_M_AXI_RDATA;
  wire axi_vip_1_M_AXI_RREADY;
  wire [1:0]axi_vip_1_M_AXI_RRESP;
  wire axi_vip_1_M_AXI_RVALID;
  wire [31:0]axi_vip_1_M_AXI_WDATA;
  wire axi_vip_1_M_AXI_WREADY;
  wire axi_vip_1_M_AXI_WVALID;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire [15:0]fifo_generator_0_M_AXIS_TDATA;
  wire fifo_generator_0_M_AXIS_TREADY;
  wire fifo_generator_0_M_AXIS_TVALID;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire stream2vga_0_hsync;
  wire [3:0]stream2vga_0_pix_b;
  wire [3:0]stream2vga_0_pix_g;
  wire [3:0]stream2vga_0_pix_r;
  wire stream2vga_0_vsync;
  wire sys_clock_1;

  assign hsync_0 = stream2vga_0_hsync;
  assign pix_b_0[3:0] = stream2vga_0_pix_b;
  assign pix_g_0[3:0] = stream2vga_0_pix_g;
  assign pix_r_0[3:0] = stream2vga_0_pix_r;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vsync_0 = stream2vga_0_vsync;
  design_1_axi_vdma_0_0 axi_vdma_0
       (.axi_resetn(rst_clk_wiz_100M_peripheral_aresetn),
        .m_axi_mm2s_aclk(clk_wiz_clk_out1),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(clk_wiz_clk_out1),
        .m_axi_s2mm_awready(1'b0),
        .m_axi_s2mm_bresp({1'b0,1'b0}),
        .m_axi_s2mm_bvalid(1'b0),
        .m_axi_s2mm_wready(1'b0),
        .m_axis_mm2s_aclk(clk_wiz_clk_out1),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(clk_wiz_clk_out1),
        .s_axi_lite_araddr(axi_vip_1_M_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(axi_vip_1_M_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_vip_1_M_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_vip_1_M_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(axi_vip_1_M_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_vip_1_M_AXI_AWVALID),
        .s_axi_lite_bready(axi_vip_1_M_AXI_BREADY),
        .s_axi_lite_bresp(axi_vip_1_M_AXI_BRESP),
        .s_axi_lite_bvalid(axi_vip_1_M_AXI_BVALID),
        .s_axi_lite_rdata(axi_vip_1_M_AXI_RDATA),
        .s_axi_lite_rready(axi_vip_1_M_AXI_RREADY),
        .s_axi_lite_rresp(axi_vip_1_M_AXI_RRESP),
        .s_axi_lite_rvalid(axi_vip_1_M_AXI_RVALID),
        .s_axi_lite_wdata(axi_vip_1_M_AXI_WDATA),
        .s_axi_lite_wready(axi_vip_1_M_AXI_WREADY),
        .s_axi_lite_wvalid(axi_vip_1_M_AXI_WVALID),
        .s_axis_s2mm_aclk(clk_wiz_clk_out1),
        .s_axis_s2mm_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(1'b0),
        .s_axis_s2mm_tuser(1'b0),
        .s_axis_s2mm_tvalid(1'b0));
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(clk_wiz_clk_out1),
        .aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .s_axi_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .s_axi_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .s_axi_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .s_axi_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .s_axi_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .s_axi_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .s_axi_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wvalid(1'b0));
  design_1_axi_vip_1_0 axi_vip_1
       (.aclk(clk_wiz_clk_out1),
        .aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .m_axi_araddr(axi_vip_1_M_AXI_ARADDR),
        .m_axi_arready(axi_vip_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_1_M_AXI_AWADDR),
        .m_axi_awready(axi_vip_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_1_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_1_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_1_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_1_M_AXI_RDATA),
        .m_axi_rready(axi_vip_1_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_1_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_1_M_AXI_WDATA),
        .m_axi_wready(axi_vip_1_M_AXI_WREADY),
        .m_axi_wvalid(axi_vip_1_M_AXI_WVALID));
  design_1_clk_wiz_2 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .resetn(reset_1));
  design_1_fifo_generator_0_0 fifo_generator_0
       (.m_axis_tdata(fifo_generator_0_M_AXIS_TDATA),
        .m_axis_tready(fifo_generator_0_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_generator_0_M_AXIS_TVALID),
        .s_aclk(clk_wiz_clk_out1),
        .s_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axis_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_tuser({1'b0,1'b0,1'b0,axi_vdma_0_M_AXIS_MM2S_TUSER}),
        .s_axis_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID));
  design_1_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
  design_1_stream2vga_0_0 stream2vga_0
       (.clk(clk_wiz_clk_out1),
        .hsync(stream2vga_0_hsync),
        .pix_b(stream2vga_0_pix_b),
        .pix_g(stream2vga_0_pix_g),
        .pix_r(stream2vga_0_pix_r),
        .resetn(rst_clk_wiz_100M_peripheral_aresetn),
        .tdata(fifo_generator_0_M_AXIS_TDATA),
        .tready(fifo_generator_0_M_AXIS_TREADY),
        .tvalid(fifo_generator_0_M_AXIS_TVALID),
        .vsync(stream2vga_0_vsync));
endmodule
