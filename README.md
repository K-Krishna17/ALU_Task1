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
The ALU supports the following operations, selected via a 8-bit opcode:
| ALU_SEL | Operation |        Description             |
| ------- | --------- | ------------------------------ |
| `0000`  |    ADD    | Addition (`A + B`)             |
| `0001`  |    SUB    | Subtraction (`A - B`)          |
| `0010`  |    MUL    | Multiplication (`A * B`)       |
| `0011`  |    DIV    | Division (`A / B`)             |
| `0100`  |    AND    | Logical AND (`A & B`)          |
| `0101`  |    OR     | Logical OR (`A \| B`)          |
| `0110`  |    XOR    | Logical XOR (`A ^ B`)          |
| `0111`  |    NOT    | Logical NOT (`~A`)             |
| `1000`  |    SHL    | Logical Shift Left (`A << 1`)  |
| `1001`  |    SHR    | Logical Shift Right (`A >> 1`) |
| `1010`  |    ROL    | Rotate Left                    |
| `1011`  |    ROR    | Rotate Right                   |
| `1100`  |    NOR    | Logical NOR (`~(A \| B)`)      |
| `1101`  |   NAND    | Logical NAND (`~(A & B)`)      |
| `1110`  |   XNOR    | Logical XNOR (`~(A ^ B)`)      |


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
