module PC (
    input wire clk,          // Clock input
    input wire rst,          // Reset input
    input wire [31:0] pc_in, // Input PC value
    output wire [31:0] pc_out // Output PC value
);

    // Register to hold the current PC value
    reg [31:0] current_pc;

    // Synchronous reset
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_pc <= 32'h00000000; // Reset PC to 0
        else
            current_pc <= pc_in;        // Update PC with input value
    end

    // Output the current PC value
    assign pc_out = current_pc;

endmodule
