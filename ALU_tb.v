// ALU Module - Corrected Version
module alu (
    input  [7:0] A,             // Operand A
    input  [7:0] B,             // Operand B
    input  [3:0] ALU_SEL,       // Operation selector
    output reg [15:0] ALU_RESULT // Wider result for multiplication
);

    always @(*) begin
        case (ALU_SEL)

            // Arithmetic Operations
            4'b0000: ALU_RESULT = A + B;                 // Addition
            4'b0001: ALU_RESULT = A - B;                 // Subtraction
            4'b0010: ALU_RESULT = A * B;                 // Multiplication
            
            4'b0011: begin                               // Division
                if (B != 0)
                    ALU_RESULT = A / B;
                else
                    ALU_RESULT = 16'b0;                  // Handle divide-by-zero
            end

            // Logical Operations
            4'b0100: ALU_RESULT = A & B;                 // Logical AND
            4'b0101: ALU_RESULT = A | B;                 // Logical OR
            4'b0110: ALU_RESULT = A ^ B;                 // Logical XOR
            4'b0111: ALU_RESULT = ~A;                    // Logical NOT

            // Shift Operations
            4'b1000: ALU_RESULT = A << 1;                // Logical Shift Left
            4'b1001: ALU_RESULT = A >> 1;                // Logical Shift Right

            // Rotate Operations
            4'b1010: ALU_RESULT = {A[6:0], A[7]};        // Rotate Left
            4'b1011: ALU_RESULT = {A[0], A[7:1]};        // Rotate Right

            // Advanced Logical Operations
            4'b1100: ALU_RESULT = ~(A | B);              // Logical NOR
            4'b1101: ALU_RESULT = ~(A & B);              // Logical NAND
            4'b1110: ALU_RESULT = ~(A ^ B);              // Logical XNOR

            default: ALU_RESULT = 16'bxxxxxxxxxxxxxxxx;  // Default case
        endcase
    end
endmodule



