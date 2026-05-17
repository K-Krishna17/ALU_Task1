# INTERACTIVE- ARITHMETIC LOGIC UNIT (ALU)

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: KOTHURI MURALI KRISHNA 

*INTERN ID*: CTIS9479

*DOMAIN*: VLSI

*DURATION*: 6 WEEEKS

*MENTOR*: NEELA SANTOSH


# DESCRIPTION 

Task Overview:

This repository contains the design and implementation of a basic Arithmetic Logic Unit (ALU) in Verilog, developed as part of TASK_1 from CODTECH IT SOLUTIONS PVT.LTD internship program.
The ALU is a fundamental digital circuit used in processors to perform arithmetic and logical operations.


The goal of this task is to:

-> Implement an ALU supporting addition, subtraction, multiplication, division, AND, OR, XOR, NOT, shift left, and shift right.

-> Verify functionality using a testbench.

-> Document results with a simulation report.


ALU Features
The ALU supports the following operations, selected via a 4-bit opcode:
|  Opcode  |     Operation    |          Description             |
| -------- | ---------------- | -------------------------------- |
| **0000** |    [Addition]    |          Adds A and B            |
| **0001** |   [Subtraction]  |       Subtracts B from A         |
| **0010** | [Multiplication] |       Multiplies A and B         |
| **0011** |    [Division]    | Divides A by B (with zero check) |
| **0100** |       [AND]      |     Bitwise AND of A and B       |
| **0101** |       [OR]       |     Bitwise OR of A and B        |
| **0110** |       [XOR]      |     Bitwise XOR of A and B       |
| **0111** |       [NOT]      |        Bitwise NOT of A          |
| **1000** |   [Shift Left]   |      Shifts A left by 1 bit      |
| **1001** |   [Shift Right]  |      Shifts A right by 1 bit     |



Conclusion

-> The ALU module (alu.v) defines inputs A, B, and opcode, and produces an output result.

-> A case statement selects the operation based on the opcode.

-> Arithmetic operations (add, subtract, multiply, divide) use Verilog’s built-in operators.

-> Logical operations (AND, OR, XOR, NOT) apply bitwise logic.

-> Shift operations move bits left or right by one position.

-> The testbench (alu_tb.v) applies different inputs and opcodes, waits for simulation time, and prints results.

-> Division includes a zero check to avoid runtime errors.

-> The simulation report documents correctness with waveform screenshots and explanations.



Observe Results

-> The $monitor statement in the testbench prints results for each operation.

-> Waveforms can be viewed in the simulator GUI.

-> Capture screenshots for the simulation report.
