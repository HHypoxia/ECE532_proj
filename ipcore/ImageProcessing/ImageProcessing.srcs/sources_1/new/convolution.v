`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/03 18:55:47
// Design Name: 
// Module Name: convolution
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module convolution #
(
parameter SUM_ALL_KERNAL = 27
)
(
    input d_clk,
    input valid_in,   

    //input [7:0] r_in, g_in, b_in,     // 8-bit RGB input pixel
    input [215:0] RGB_data,
    output  reg valid_out,             // Output pixel valid
    output reg [7:0] convolved_grey
    );
    integer i;
    reg multValid, sumValid;
    
    reg [7:0] kernel [2:0] [8:0];  // 3x3 kernel
    reg [7:0] base_kernel [8:0];
    
    reg [15:0] mult_r [8:0];
    reg [15:0] mult_g [8:0];
    reg [15:0] mult_b [8:0];
    reg [19:0] sumAll_r, sumAll_g, sumAll_b;     //// 20 bits to prevent overflow

    
    reg [7:0] r_out, g_out, b_out;
    integer i;
    
    initial begin
        // Initialize base 2D kernel (example values)
        base_kernel[0] = 8'd1;  // Top-left
        base_kernel[1] = 8'd1;  // Top-center
        base_kernel[2] = 8'd1;  // Top-right
        base_kernel[3] = 8'd1;  // Middle-left
        base_kernel[4] = 8'd1;  // Center
        base_kernel[5] = 8'd1;  // Middle-right
        base_kernel[6] = 8'd1;  // Bottom-left
        base_kernel[7] = 8'd1;  // Bottom-center
        base_kernel[8] = 8'd1;  // Bottom-right

        // Copy base kernel to each color channel
        for (i = 0; i < 9; i = i + 1) begin
            kernel[0][i] = base_kernel[i];
            kernel[1][i] = base_kernel[i];
            kernel[2][i] = base_kernel[i];
        end
    end

    // Extract 8-bit RGB values from the 216-bit input
//    reg [7:0] r [0:8];
//    reg [7:0] g [0:8];
//    reg [7:0] b [0:8];
    
    always @(posedge d_clk) begin : multiply

    for (i = 0; i < 9; i = i + 1) begin
    // For pixel i:
        mult_r[i] <= kernel[0][i] * RGB_data[215 - (i*24) -:8];    // R: [215-24i:208-24i]
        mult_g[i] <= kernel[1][i] * RGB_data[207 - (i*24) -:8];    // G: [207-24i:200-24i]
        mult_b[i] <= kernel[2][i] * RGB_data[199 - (i*24) -:8];    // B: [199-24i:192-24i]
    end

    multValid <= valid_in;
    end
    
    always @(*) begin

    sumAll_r=0;
    sumAll_g=0;
    sumAll_b=0;
    for (i = 0; i < 9; i = i + 1) begin
           sumAll_r = sumAll_r + mult_r[i];
           sumAll_g = sumAll_g + mult_g[i];
           sumAll_b = sumAll_b + mult_b[i];
           
    end

    end
    
    always @(posedge d_clk) begin
            r_out <= sumAll_r;
            g_out <= sumAll_g;
            b_out <= sumAll_b;
            sumValid <= multValid;
    end
    
    wire [7:0] grey_norm = ((r_out + g_out +b_out)/SUM_ALL_KERNAL)> 255 ? 8'd255 :((r_out + g_out +b_out)/SUM_ALL_KERNAL);
    
    always @(posedge d_clk) begin
        convolved_grey <= grey_norm;
        valid_out <= sumValid;
    end
endmodule
