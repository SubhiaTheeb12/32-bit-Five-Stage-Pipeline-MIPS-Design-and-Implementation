module MainControl(
    input [5:0] Opcode,
    output reg RegDst, RegWrite, ALUSrc,
    output reg MemtoReg, MemRead, MemWrite,
    output reg Branch
);

always @(*)
begin
    case(Opcode)
        6'b000000: begin // R-Type
            RegDst    = 1'b1;
            RegWrite  = 1'b1;
            ALUSrc    = 1'b0;
            MemtoReg  = 1'b0;
            MemRead   = 1'b0;
            MemWrite  = 1'b0;
            Branch    = 1'b0;
        end
        6'b100011: begin // lw
            RegDst    = 1'b0;
            RegWrite  = 1'b1;
            ALUSrc    = 1'b1;
            MemtoReg  = 1'b1;
            MemRead   = 1'b1;
            MemWrite  = 1'b0;
            Branch    = 1'b0;
        end
        6'b101011: begin // sw
            RegDst    = 1'bX; // Not used in sw instruction
            RegWrite  = 1'b0;
            ALUSrc    = 1'b1;
            MemtoReg  = 1'bX; // Not used in sw instruction
            MemRead   = 1'b0;
            MemWrite  = 1'b1;
            Branch    = 1'b0;
        end
        default: begin // Other instructions
            RegDst    = 1'bX;
            RegWrite  = 1'bX;
            ALUSrc    = 1'bX;
            MemtoReg  = 1'bX;
            MemRead   = 1'bX;
            MemWrite  = 1'bX;
            Branch    = 1'bX;
        end
    endcase
end

endmodule
