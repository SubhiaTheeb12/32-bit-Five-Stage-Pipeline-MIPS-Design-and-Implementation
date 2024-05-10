module MEM_W_EN (
    input [1:0] memOp,
    output reg memWriteEnable
);

// Define memory operations
parameter MEM_READ = 2'b00;
parameter MEM_WRITE = 2'b01;
parameter MEM_NONE = 2'b10;

always @* begin
    // Enable memory write for MEM_WRITE operation
    if (memOp == MEM_WRITE)
        memWriteEnable = 1'b1;
    else
        memWriteEnable = 1'b0;
end

endmodule // MEM_W_EN
