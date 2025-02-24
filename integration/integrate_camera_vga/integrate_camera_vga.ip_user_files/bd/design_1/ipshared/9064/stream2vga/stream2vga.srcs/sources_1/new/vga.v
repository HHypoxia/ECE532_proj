`timescale 1ns / 1ps

module stream2vga(
    input  wire        clk,             // 25 MHz pixel clock
    input  wire        aresetn,         // Asynchronous reset (active low)
    // VGA Interface
    output wire        hsync,           // Horizontal sync
    output wire        vsync,           // Vertical sync
    output reg  [3:0]  pixel_out_r,     // 4-bit Red output
    output reg  [3:0]  pixel_out_g,     // 4-bit Green output
    output reg  [3:0]  pixel_out_b,     // 4-bit Blue output
    // AXIS Input Interface
    input  wire [15:0] tdata,           // 16-bit pixel data (upper 4 bits unused)
    input  wire        tvalid,          // Data valid
    output reg         tready,          // Ready to accept data
    // Position Counters
    output wire [9:0]  hcounter,        // Horizontal position
    output wire [9:0]  vcounter         // Vertical position
);

//=============================================================================
// VGA Timing Parameters (640x480@60Hz)
//=============================================================================
parameter H_ACTIVE  = 640;        // Horizontal active pixels
parameter H_FP      = 16;         // Horizontal front porch
parameter H_SYNC    = 96;         // Horizontal sync pulse
parameter H_BP      = 48;         // Horizontal back porch

parameter V_ACTIVE  = 480;        // Vertical active lines
parameter V_FP      = 11;         // Vertical front porch
parameter V_SYNC    = 2;          // Vertical sync pulse
parameter V_BP      = 31;         // Vertical back porch

// Derived parameters
localparam H_TOTAL = H_ACTIVE + H_FP + H_SYNC + H_BP;   // 800
localparam V_TOTAL = V_ACTIVE + V_FP + V_SYNC + V_BP;   // 525

// Timing boundaries
localparam H_START_ACTIVE = H_SYNC + H_BP;              // Start of active horiz
localparam H_END_ACTIVE   = H_START_ACTIVE + H_ACTIVE;  // End of active horiz
localparam V_START_ACTIVE = V_SYNC + V_BP;              // Start of active vert
localparam V_END_ACTIVE   = V_START_ACTIVE + V_ACTIVE;  // End of active vert

//=============================================================================
// Horizontal and Vertical Counters
//=============================================================================
reg [9:0] h_cnt;  // Horizontal counter
reg [9:0] v_cnt;  // Vertical counter

assign hcounter = h_cnt;
assign vcounter = v_cnt;

always @(posedge clk or negedge aresetn) begin
    if (!aresetn) begin
        h_cnt <= 10'd0;
        v_cnt <= 10'd0;
    end
    else begin
        // Horizontal counter
        if (h_cnt < H_TOTAL - 1) begin
            h_cnt <= h_cnt + 1;
        end
        else begin
            h_cnt <= 0;
            // Vertical counter
            if (v_cnt < V_TOTAL - 1) begin
                v_cnt <= v_cnt + 1;
            end
            else begin
                v_cnt <= 0;
            end
        end
    end
end

//=============================================================================
// Sync Pulse Generation (Active Low)
//=============================================================================
assign hsync = (h_cnt < H_SYNC) ? 1'b0 : 1'b1;
assign vsync = (v_cnt < V_SYNC) ? 1'b0 : 1'b1;

//=============================================================================
// Pixel Data Processing
//=============================================================================
always @(*) begin
    // Default outputs
    pixel_out_r = 4'h0;
    pixel_out_g = 4'h0;
    pixel_out_b = 4'h0;
    tready = 1'b0;

    // Active display area
    if ((v_cnt >= V_START_ACTIVE) && (v_cnt < V_END_ACTIVE) &&
        (h_cnt >= H_START_ACTIVE) && (h_cnt < H_END_ACTIVE)) begin
        // Map 12-bit input data to RGB channels
        pixel_out_r = tdata[11:8];  // Red channel
        pixel_out_g = tdata[7:4];   // Green channel
        pixel_out_b = tdata[3:0];   // Blue channel
        tready = 1'b1;
    end
end

endmodule