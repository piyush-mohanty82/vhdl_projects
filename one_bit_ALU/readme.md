# 1-Bit ALU using VHDL

**Description**

* This project implements a 1-bit Arithmetic and Logic Unit (ALU) using VHDL. The design showcases a modular approach by integrating various components such as a half-adder, half-subtractor, comparator, AND gate, and an 8:1 multiplexer.

* The ALU supports multiple operations controlled by a 3-bit selection signal (sel1), allowing flexibility in computation. The design is fully simulated and synthesized using Xilinx Vivado and is ready for deployment on an FPGA.

**Features**

Arithmetic Operations:

* Addition

* Subtraction

Logical Operations:

* AND

Greater Than

* Equal To
* Less Than

Output Selection:
* Utilizes an 8:1 multiplexer for output selection based on the selector line.

**Project Structure**

The project consists of the following modules:

*Half Adder:*

* Performs the addition of two single-bit inputs (A and B) and generates a sum and a carry.

*Half Subtractor:*

* Performs subtraction between two single-bit inputs (P and Q) and generates a difference and borrow.

*1-Bit Comparator:*

Compares two single-bit inputs (R and S) and determines:

* If A > B

* If A = B

* If A < B

*AND Gate:*

* Performs a logical AND operation on two inputs.

*8:1 Multiplexer:*

* Selects one of the eight possible outputs based on the control signal (sel1).

*Top-Level ALU:*

* Integrates all components and provides the required functionality based on sel1.

**Operation**

*Inputs*

* A1, B1: Single-bit operands.

* sel1: 3-bit control signal to select the operation.

*Outputs*

* output1: The final result of the selected operation.

| sel1 | Operation          | Component Output           |
|------|--------------------|----------------------------|
|000   |Sum (Addition)      |Sum1 (from Half Adder)      |
|001   |Carry (Addition)    |C1 (from Half Adder)        |
|010   |Difference	        |Diff1 (from Half Subtractor)|
|011   |Borrow (Subtraction)|C2 (from Half Subtractor)   |
|100   |A > B               |a_G_b (from Comparator)     |
|101   |A = B               |a_E_b (from Comparator)     |
|110   |A < B               |a_L_b (from Comparator)     |
|111   |Logical AND         |and1 (from AND Gate)        |

## Schematic

![alt text](<Screenshot 2025-01-04 185948.png>)

## Example Test Cases

Here are some test cases to verify the functionality during simulation:

| A1 | B1 | sel1 | Expected Output (output1) |
|----|----|------|---------------------------|
|0   |0   |000   |0 (Sum)                    |
|1   |1	  |001   |1 (Carry)                  |
|1   |0   |010   |1 (Difference)             |
|0   |1   |011   |1 (Borrow)                 |
|1   |0   |100   |1 (A > B)                  |
|0   |0   |101   |1 (A = B)                  |
|0   |1   |110   |1 (A < B)                  |
|1   |1   |111   |1 (AND Operation)          |

## wave form

![alt text](<Screenshot 2025-01-04 185610.png>)

