module mux_3input_out1 #(parameter integer LENGTH = 8) (
    input wire [LENGTH-1:0] in1,
    input wire [LENGTH-1:0] in2,
    input wire [LENGTH-1:0] in3,
    input wire [1:0] sel,
    output reg [LENGTH-1:0] out
);

    always @* begin
        case (sel)
            2'b00: out = in1;
            2'b01: out = in2;
            2'b10: out = in3;
            default: out = in1; // Default behavior, you can choose any input
        endcase
    end

endmodule // mux_3input_out1
