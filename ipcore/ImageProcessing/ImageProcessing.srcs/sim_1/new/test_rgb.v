`timescale 1ns / 1ps

module test_rgb;
  // Testbench signals
  reg              d_clk;
  reg              valid_in;
  reg  [215:0]     RGB_data;
  wire             valid_out;
  wire [23:0]      convolved_rgb;
  wire [7:0]       convolved_grey;

  // Instantiate the DUT (Device Under Test)
  conv_rgb #(
    .SUM_ALL_KERNAL(27)
  ) dut (
    .d_clk           (d_clk),
    .valid_in        (valid_in),
    .RGB_data        (RGB_data),
    .valid_out       (valid_out),
    .convolved_rgb   (convolved_rgb)
  );

  // Generate a 10 ns period clock (100 MHz)
  initial begin
    d_clk = 0;
    forever #5 d_clk = ~d_clk;
  end

  // A helper function to pack 8-bit R, G, B into a 24-bit word.
  function [23:0] packRGB;
    input [7:0] R, G, B;
    begin
      packRGB = {R, G, B};  // R is most significant byte, B is least significant.
    end
  endfunction

  // A task to load 9 pixels into the 216-bit RGB_data bus.
  task loadPixels(
    input [7:0] R0, input [7:0] G0, input [7:0] B0,
    input [7:0] R1, input [7:0] G1, input [7:0] B1,
    input [7:0] R2, input [7:0] G2, input [7:0] B2,
    input [7:0] R3, input [7:0] G3, input [7:0] B3,
    input [7:0] R4, input [7:0] G4, input [7:0] B4,
    input [7:0] R5, input [7:0] G5, input [7:0] B5,
    input [7:0] R6, input [7:0] G6, input [7:0] B6,
    input [7:0] R7, input [7:0] G7, input [7:0] B7,
    input [7:0] R8, input [7:0] G8, input [7:0] B8
  );
    begin
      RGB_data = {
        packRGB(R0, G0, B0),
        packRGB(R1, G1, B1),
        packRGB(R2, G2, B2),
        packRGB(R3, G3, B3),
        packRGB(R4, G4, B4),
        packRGB(R5, G5, B5),
        packRGB(R6, G6, B6),
        packRGB(R7, G7, B7),
        packRGB(R8, G8, B8)
      };
    end
  endtask

  // Main test stimulus
  initial begin
    // Initialize control signals
    valid_in = 0;
    RGB_data = 0;

    // Wait for initialization
    #20;

    // --------------------------------------------------------
    // 1. Test all zeros (should test multiplication by 0)
    // --------------------------------------------------------
    $display("\n--- Test 1: All Zeros (RGB mode) ---");
    loadPixels(
      8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,
      8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,
      8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0,  8'd0
    );
    valid_in = 1;
    #50;
    valid_in = 0;
    #50;
    $display("Time=%0t, convolved_rgb=%h, convolved_grey=%h", $time, convolved_rgb, convolved_grey);

//    // --------------------------------------------------------
//    // 2. Test all max (255,255,255)
//    // --------------------------------------------------------
//    $display("\n--- Test 2: All Max (RGB mode) ---");
//    loadPixels(
//      8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255,
//      8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255,
//      8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255, 8'd255
//    );
//    valid_in = 1;
//    #50;
//    valid_in = 0;
//    #50;
//    $display("Time=%0t, convolved_rgb=%h, convolved_grey=%h", $time, convolved_rgb, convolved_grey);

    // --------------------------------------------------------
    // 2. Test all 1
    // --------------------------------------------------------
    $display("\n--- Test 2: Mixed Pattern (RGB mode) ---");
    loadPixels(
      8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1,
      8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1,
      8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1
    );
    valid_in = 1;
    #10;
    valid_in = 0;
    #50;
    $display("Time=%0t, convolved_rgb=%h, convolved_grey=%h", $time, convolved_rgb, convolved_grey);
   // --------------------------------------------------------
    // 3. Test a mixed pattern
    // --------------------------------------------------------
    $display("\n--- Test 2: Mixed Pattern (RGB mode) ---");
    loadPixels(
      8'd9, 8'd9, 8'd9, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1,
      8'd9, 8'd9, 8'd9, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1,
      8'd9, 8'd9, 8'd9, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1, 8'd1
    );
    valid_in = 1;
    #10;
    valid_in = 0;
    #50;
    $display("Time=%0t, convolved_rgb=%h, convolved_grey=%h", $time, convolved_rgb, convolved_grey);
//    // Finish simulation
    #20;
    $stop;
  end

endmodule
