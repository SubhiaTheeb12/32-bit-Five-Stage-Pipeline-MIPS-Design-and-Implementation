module register_file (
    input wire [4:0] rs, // Register address for first input
    input wire [4:0] rt, // Register address for second input
    input wire [4:0] rd, // Register address for output/write
    input wire [31:0] writeData, // Data to be written to the register
    input wire RegWrite, // Control signal for write enable
    input wire clk, // Clock signal
    output reg [31:0] readData1, // Output of first register read
    output reg [31:0] readData2 // Output of second register read
);

reg [31:0] registers [0:31]; // 32 registers, each 32 bits wide

always @(posedge clk) begin
    if (RegWrite) begin
        registers[rd] <= writeData;
    end
    readData1 <= registers[rs];
    readData2 <= registers[rt];
end

endmodule
