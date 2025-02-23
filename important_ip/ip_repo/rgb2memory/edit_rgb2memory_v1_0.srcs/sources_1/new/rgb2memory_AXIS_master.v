`timescale 1 ns / 1 ps

module rgb2memory_v1_0_M_AXIS #
(
    parameter integer C_M_AXIS_TDATA_WIDTH = 32,
    parameter integer C_M_START_COUNT = 32
)
(
    // AXI Stream Interface
    input wire M_AXIS_ACLK,
    input wire M_AXIS_ARESETN,
    output reg  M_AXIS_TVALID,
    output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
    output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
    output wire  M_AXIS_TLAST,
    input wire  M_AXIS_TREADY,

    // User Interface
    input wire [11:0] rgb_input,
    input wire rgb_valid,
    input wire rgb_last,
    output wire full_buffer
);

// FIFO Parameters
localparam FIFO_DEPTH = 1024;
localparam FIFO_WIDTH = 16;
localparam TOTAL_BEATS = 153600;

// FIFO Storage and Pointers
reg [FIFO_WIDTH-1:0] fifo [0:FIFO_DEPTH-1];
reg [9:0] wr_ptr = 0;
reg [9:0] rd_ptr = 0;
reg [10:0] fifo_count = 0;
reg [17:0] beat_count = 0;
// AXI Signals
reg [C_M_AXIS_TDATA_WIDTH-1:0] tdata;
reg tlast_reg;
reg buffer_empty;

assign M_AXIS_TDATA = tdata;
assign M_AXIS_TSTRB = {(C_M_AXIS_TDATA_WIDTH/8){1'b1}}; // All bytes valid
assign M_AXIS_TLAST = tlast_reg;
assign full_buffer = buffer_empty;

// FIFO Write Logic
always @(posedge M_AXIS_ACLK) begin
    if (~M_AXIS_ARESETN) begin
        wr_ptr <= 0;
        fifo_count <= 0;
        buffer_empty <= 0;
    end else if (rgb_valid && buffer_empty) begin
        fifo[wr_ptr] <= {4'b0, rgb_input}; // Pad to 16 bits
        wr_ptr <= wr_ptr + 1;
        fifo_count <= fifo_count + 1;
        if (wr_ptr == FIFO_DEPTH-1) 
            wr_ptr <= 0; // Wrap around
    end   
end

always @(posedge M_AXIS_ACLK) begin
    if (~M_AXIS_ARESETN) begin
        buffer_empty <= 1'b0;
    end
    else begin
        buffer_empty <= (fifo_count < FIFO_DEPTH);
    end
end


// FIFO Read and AXI Control
always @(posedge M_AXIS_ACLK) begin
    if (~M_AXIS_ARESETN) begin
        rd_ptr <= 0;
        fifo_count <= 0;
        M_AXIS_TVALID <= 0;
        tdata <= 0;
        tlast_reg <= 0;
        beat_count <= 0;
    end else begin

        //-----------------------------------------------------
        // 1) If we just completed a valid handshake:
        //    - Clear TVALID
        //    - Increment beat_count
        //    - Check if next beat should be TLAST
        //-----------------------------------------------------
        if (M_AXIS_TVALID && M_AXIS_TREADY) begin
            M_AXIS_TVALID <= 0;

            // Increment beat_count after every successful beat
            if (beat_count == (TOTAL_BEATS - 1)) begin
                // We have just finished the final beat of a frame
                beat_count <= 0;       
            end else begin
                beat_count <= beat_count + 1;
            end
        end

        //-----------------------------------------------------
        // 2) If we have at least 2 samples in FIFO and
        //    we are not currently driving TVALID,
        //    then prepare the next beat.
        //-----------------------------------------------------
        if ((fifo_count >= 2) && (M_AXIS_TVALID == 0)) begin
            // Read two 16-bit words from FIFO and pack into 32 bits
            tdata <= {fifo[rd_ptr], fifo[rd_ptr + 1]};
            
             // Increment read pointer by 2 (with wrap)
            if (rd_ptr == FIFO_DEPTH-2)
                rd_ptr <= 0;
            else if (rd_ptr == FIFO_DEPTH-1)
                rd_ptr <= 1;
            else
                rd_ptr <= rd_ptr + 2;
                
            fifo_count <= fifo_count - 2;
            // This new beat is valid
            M_AXIS_TVALID <= 1;
            if (beat_count == (TOTAL_BEATS - 1)) begin
                tlast_reg <= 1;
            end else begin
                tlast_reg <= 0;
            end
        end
    end
end

endmodule