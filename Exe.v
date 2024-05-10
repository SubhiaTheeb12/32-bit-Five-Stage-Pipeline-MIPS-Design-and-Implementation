module Exe(
 
    input wire clk,        // Clock input
    input wire reset,      // Reset input
    input wire [31:0] aluResult,  // Result from ALU stage
    input wire [31:0] dataIn,     // Data input (to be written to memory)
    input wire writeEnable,        // Write enable signal
    input wire [1:0] memOp,        // Memory operation (read or write)
    input wire [31:0] address,     // Memory address
    output reg [31:0] dataOut,     // Data output (from memory)
    output reg memWriteEnable      // Memory write enable signal
);

    // Registers to hold previous values for pipelining
    reg [31:0] prevAluResult;
    reg [31:0] prevDataIn;
    reg [1:0] prevMemOp;
    reg [31:0] prevAddress;

    // Memory array
    reg [31:0] memory [0:255];  // 256 words of memory

    // Initialize memory
    generate
        genvar i;
        for (i = 0; i < 256; i = i + 1) begin : INIT_MEM
            initial begin
                memory[i] = 0;
            end
        end
    endgenerate

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset the registers and memory
            prevAluResult <= 0;
            prevDataIn <= 0;
            prevMemOp <= 0;
            prevAddress <= 0;
            dataOut <= 0;
            memWriteEnable <= 0;
        end else begin
            // Pipeline registers
            prevAluResult <= aluResult;
            prevDataIn <= dataIn;
            prevMemOp <= memOp;
            prevAddress <= address;

            // Perform memory operation
            case (prevMemOp)
                2'b00: dataOut <= memory[prevAddress];  // Read operation
                2'b01: begin  // Write operation
                            if (writeEnable) begin
                                memory[prevAddress] <= prevDataIn;
                            end
                        end
                default: begin
                            // Other operations (if any)
                        end
            endcase

            // Set memory write enable signal
            memWriteEnable <= (prevMemOp == 2'b01) ? writeEnable : 1'b0;
        end
    end

endmodule // EXE_MEM
