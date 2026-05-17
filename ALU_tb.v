// Testbench for ALU Module

`timescale 1ns / 1ps

module alu_tb;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg [3:0] ALU_SEL;

    // Output
    wire [15:0] ALU_RESULT;

    // Instantiate the ALU
    alu uut (
        .A(A),
        .B(B),
        .ALU_SEL(ALU_SEL),
        .ALU_RESULT(ALU_RESULT)
    );

    // Test procedure
    initial begin

        // Display Header
        $display("===============================================");
        $display(" TIME\tA\tB\tALU_SEL\tRESULT");
        $display("===============================================");

        // Monitor Values
        $monitor("%0dns\t%d\t%d\t%b\t%d",
                  $time, A, B, ALU_SEL, ALU_RESULT);

        // Test Addition
        A = 8'd10; B = 8'd5; ALU_SEL = 4'b0000;
        #10;

        // Test Subtraction
        A = 8'd20; B = 8'd8; ALU_SEL = 4'b0001;
        #10;

        // Test Multiplication
        A = 8'd12; B = 8'd4; ALU_SEL = 4'b0010;
        #10;

        // Test Division
        A = 8'd40; B = 8'd5; ALU_SEL = 4'b0011;
        #10;

        // Test Division by Zero
        A = 8'd40; B = 8'd0; ALU_SEL = 4'b0011;
        #10;

        // Test AND
        A = 8'b10101010; B = 8'b11001100; ALU_SEL = 4'b0100;
        #10;

        // Test OR
        A = 8'b10101010; B = 8'b11001100; ALU_SEL = 4'b0101;
        #10;

        // Test XOR
        A = 8'b10101010; B = 8'b11001100; ALU_SEL = 4'b0110;
        #10;

        // Test NOT
        A = 8'b10101010; B = 8'b00000000; ALU_SEL = 4'b0111;
        #10;

        // Test Shift Left
        A = 8'b00001111; B = 8'd0; ALU_SEL = 4'b1000;
        #10;

        // Test Shift Right
        A = 8'b11110000; B = 8'd0; ALU_SEL = 4'b1001;
        #10;

        // Test Rotate Left
        A = 8'b10000001; B = 8'd0; ALU_SEL = 4'b1010;
        #10;

        // Test Rotate Right
        A = 8'b10000001; B = 8'd0; ALU_SEL = 4'b1011;
        #10;

        // Test NOR
        A = 8'b10101010; B = 8'b11001100; ALU_SEL = 4'b1100;
        #10;

        // Test NAND
        A = 8'b10101010; B = 8'b11001100; ALU_SEL = 4'b1101;
        #10;

        // Test XNOR
        A = 8'b10101010; B = 8'b11001100; ALU_SEL = 4'b1110;
        #10;

        // End Simulation
        $display("===============================================");
        $display(" Simulation Completed ");
        $display("===============================================");

        $finish;
    end

endmodule
