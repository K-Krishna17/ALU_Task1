// ALU Testbench
module alu_tb;

    reg [7:0] A, B;
    reg [3:0] opcode;
    wire [15:0] result;

    // Instantiate ALU
    alu uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

    initial begin
        // Monitor outputs
        $monitor("Time=%0t | A=%d | B=%d | Opcode=%b | Result=%d", $time, A, B, opcode, result);

        // Addition
        A = 8'd10; B = 8'd5; opcode = 4'b0000; #10;

        // Subtraction
        A = 8'd15; B = 8'd7; opcode = 4'b0001; #10;

        // Multiplication
        A = 8'd6; B = 8'd4; opcode = 4'b0010; #10;

        // Division
        A = 8'd20; B = 8'd5; opcode = 4'b0011; #10;

        // AND
        A = 8'b1100; B = 8'b1010; opcode = 4'b0100; #10;

        // OR
        A = 8'b1100; B = 8'b1010; opcode = 4'b0101; #10;

        // XOR
        A = 8'b1100; B = 8'b1010; opcode = 4'b0110; #10;

        // NOT
        A = 8'b11110000; opcode = 4'b0111; #10;

        // Shift Left
        A = 8'd8; opcode = 4'b1000; #10;

        // Shift Right
        A = 8'd8; opcode = 4'b1001; #10;

        $stop; // End simulation
    end

endmodule
