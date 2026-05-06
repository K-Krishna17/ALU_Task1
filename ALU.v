// ALU Module - Internship Task
module alu (
    input  [7:0] A,        // Operand A
    input  [7:0] B,        // Operand B
    input  [3:0] opcode,   // Operation selector
    output reg [15:0] result // Wider result for multiplication
);

    always @(*) begin
        case (opcode)
            4'b0000: result = A + B;       // Addition
            4'b0001: result = A - B;       // Subtraction
            4'b0010: result = A * B;       // Multiplication
            4'b0011: result = (B != 0) ? A / B : 16'hFFFF; // Division with check
            4'b0100: result = A & B;       // AND
            4'b0101: result = A | B;       // OR
            4'b0110: result = A ^ B;       // XOR
            4'b0111: result = ~A;          // NOT
            4'b1000: result = A << 1;      // Shift Left
            4'b1001: result = A >> 1;      // Shift Right
            default: result = 16'h0000;    // Default case
        endcase
    end

endmodule
