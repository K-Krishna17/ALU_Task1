// ALU Module 
`timescale 1ns / 1ps

module alu(
    input  [7:0] A, B,          // 8-bit Inputs
    input  [2:0] ALU_Sel,       // 3-bit Operation Select
    output reg [7:0] ALU_Out,   // 8-bit ALU Result
    output reg CarryOut         // Carry Out Flag
    );

    always @(*)
    begin
        case(ALU_Sel)
            3'b000: begin // Addition
                {CarryOut, ALU_Out} = A + B;
            end
            3'b001: begin // Subtraction
                {CarryOut, ALU_Out} = A - B;
                // Note: CarryOut acts as a borrow flag here
            end
            3'b010: begin // Bitwise AND
                ALU_Out  = A & B;
                CarryOut = 1'b0;
            end
            3'b011: begin // Bitwise OR
                ALU_Out  = A | B;
                CarryOut = 1'b0;
            end
            3'b100: begin // Bitwise NOT (Inverts Input A)
                ALU_Out  = ~A;
                CarryOut = 1'b0;
            end
            default: begin
                ALU_Out  = 8'h00;
                CarryOut = 1'b0;
            end
        endcase
    end
endmodule
