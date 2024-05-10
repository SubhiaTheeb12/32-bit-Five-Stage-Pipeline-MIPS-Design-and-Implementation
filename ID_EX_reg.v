module ID_EX_reg (
    input wire clk,          // Clock signal
    input wire reset,        // Reset signal
    input wire [31:0] inst,  // Instruction input
    input wire [31:0] rs,    // Source register value (e.g., rs)
    input wire [31:0] rt,    // Target register value (e.g., rt)
    input wire [31:0] imm,   // Immediate value
    output reg [31:0] rs_out, // Output for forwarding (if needed)
    output reg [31:0] rt_out  // Output for forwarding (if needed)
);

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            rs_out <= rs;
            rt_out <= rt;
        end else begin
            rs_out <= 32'b0;
            rt_out <= 32'b0;
        end
    end

endmodule
