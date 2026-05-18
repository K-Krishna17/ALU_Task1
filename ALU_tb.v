// Testbench for ALU Module

`timescale 1ns / 1ps

module tb_alu;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] ALU_Sel;

    // Outputs
    wire [7:0] ALU_Out;
    wire CarryOut;

    // Instantiate the Unit Under Test (UUT)
    alu uut (
        .A(A), 
        .B(B), 
        .ALU_Sel(ALU_Sel), 
        .ALU_Out(ALU_Out), 
        .CarryOut(CarryOut)
    );

    initial begin
        // Initialize Inputs
        A = 8'h00; B = 8'h00; ALU_Sel = 3'b000;
        #10;
        
        // Test Case 1: Addition (0x05 + 0x02 = 0x07)
        A = 8'h05; B = 8'h02; ALU_Sel = 3'b000; #10;
        
        // Test Case 2: Subtraction (0x0A - 0x04 = 0x06)
        A = 8'h0A; B = 8'h04; ALU_Sel = 3'b001; #10;
        
        // Test Case 3: Bitwise AND (0xF0 & 0x0F = 0x00)
        A = 8'hF0; B = 8'h0F; ALU_Sel = 3'b010; #10;
        
        // Test Case 4: Bitwise OR (0xF0 | 0x0F = 0xFF)
        A = 8'hF0; B = 8'h0F; ALU_Sel = 3'b011; #10;
        
        // Test Case 5: Bitwise NOT (~0xAA = 0x55)
        A = 8'hAA; ALU_Sel = 3'b100; #10;
        
        // Test Case 6: Addition with Carry-out (0xFF + 0x01 = 0x00 with Carry=1)
        A = 8'hFF; B = 8'h01; ALU_Sel = 3'b000; #10;

        $finish;
    end
      
endmodule
