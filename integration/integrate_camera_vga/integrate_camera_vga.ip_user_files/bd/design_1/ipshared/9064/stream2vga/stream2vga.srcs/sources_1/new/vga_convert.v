module axi_stream_to_vga_12bit (
    input        clk,        // 25 MHz pixel clock
    input        resetn,     // Active-low reset
    // AXI-Stream Input Interface
    input [15:0] tdata,      // Pixel data input (R[11:8], G[7:4], B[3:0])
    input        tvalid,     // Data valid signal
    output       tready,     // Data ready signal
    // VGA Output Interface
    output [3:0] pix_r,      // 4-bit Red output
    output [3:0] pix_g,      // 4-bit Green output
    output [3:0] pix_b,      // 4-bit Blue output
    output       hsync,      // Horizontal sync
    output       vsync       // Vertical sync
);

// Instantiate the VGA timing controller
stream2vga vga_controller (
    // Clock and Reset
    .clk(clk),
    .aresetn(resetn),
    .hsync(hsync),
    .vsync(vsync),
    .pixel_out_r(pix_r),
    .pixel_out_g(pix_g),
    .pixel_out_b(pix_b),
    // AXI Stream Interface
    .tdata(tdata),
    .tvalid(tvalid),
    .tready(tready),
    .hcounter(),
    .vcounter()
);

endmodule