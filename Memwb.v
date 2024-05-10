module Memwb (
    input wire clk,            // Clock input
    input wire reset,          // Reset input
    input wire [31:0] dataIn,  // Data input (from memory)
    input wire memReadEnable,  // Memory read enable signal
    output reg [31:0] dataOut, // Data output (to register file)
    output reg regWriteEnable  // Register write enable signal
);

    // Register to hold data from memory
    reg [31:0] memoryData;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset the register and signals
            memoryData <= 0;
            dataOut <= 0;
            regWriteEnable <= 0;
        end else begin
            // When memory read is enabled, latch data from memory
            if (memReadEnable) begin
                memoryData <= dataIn;
            end
            
            // Output data to register file
            dataOut <= memoryData;

            // Set register write enable signal
            regWriteEnable <= memReadEnable;
        end
    end

endmodule // MEM_WB
