`timescale 1ns / 1ps

module tb_convolution;
  // Testbench signals
  reg              d_clk;
  reg              valid_in;
  reg              mode;
  reg  [215:0]     RGB_data;
  wire             valid_out;
  wire [7:0]       convolved_grey;

  // Instantiate the DUT (Device Under Test)
  convolution #(
    .SUM_ONE_KERNAL(9),
    .SUM_ALL_KERNAL(27)
  ) dut (
    .d_clk           (d_clk),
    .valid_in        (valid_in),
    .mode            (mode),
    .RGB_data        (RGB_data),
    .valid_out       (valid_out),
    .convolved_grey  (convolved_grey)
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
    // 3. Test a mixed pattern
    // --------------------------------------------------------
    $display("\n--- Test 3: Mixed Pattern (RGB mode) ---");
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

//    // --------------------------------------------------------
//    // Switch to Grayscale mode and re-run some patterns
//    // --------------------------------------------------------
//    mode = 1;  // Grayscale

//    $display("\n--- Test 4: Mixed Pattern (Gray mode) ---");
//    loadPixels(
//      8'd10,  8'd20,  8'd30,  8'd40,  8'd50,  8'd60,  8'd70,  8'd80,  8'd90,
//      8'd100, 8'd110, 8'd120, 8'd130, 8'd140, 8'd150, 8'd160, 8'd170, 8'd180,
//      8'd190, 8'd200, 8'd210
//    );
//    valid_in = 1;
//    #10;
//    valid_in = 0;
//    #50;
//    $display("Time=%0t, convolved_rgb=%h, convolved_grey=%h", $time, convolved_rgb, convolved_grey);

//    // Finish simulation
    #20;
    $stop;
  end


endmodule
