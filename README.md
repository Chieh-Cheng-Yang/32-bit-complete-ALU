# 32-bit Complete ALU

A 32-bit Complete ALU implemented in Verilog HDL for the Computer Organization course.

## Overview

This project implements a 32-bit Complete ALU by combining

- 32-bit Register File (Read Only)
- 32-bit Arithmetic Logic Unit (ALU)

The Complete ALU accepts a 32-bit instruction and outputs

- 32-bit execution result
- Zero flag
- Carry flag

---

## Features

Supported instructions

| Instruction | Function Code |
|-------------|---------------|
| ADDU | 001001 |
| SUBU | 001010 |
| NOR | 010011 |
| SLL | 100001 |

---

## Project Structure

```
RTL/
├── RF.v
├── ALU.v
└── CompALU.v

doc/
└── HW1.pdf
```

---

## Instruction Format

| OP | rs | rt | rd | shamt | funct |
|----|----|----|----|-------|-------|
|6 bits|5 bits|5 bits|5 bits|5 bits|6 bits|

---

## Module Description

### Register File

- 32 registers
- 32-bit width
- Read-only
- Two read ports

### ALU

Operations

- Unsigned Addition
- Unsigned Subtraction
- NOR
- Logical Shift Left

Outputs

- ALUResult
- Zero
- Carry

### Complete ALU

Combines Register File and ALU into a complete execution unit.

---

## Verification

The design has been verified using the course-provided testbench.

To respect the course materials, the instructor-provided testbench and test vectors are **not included** in this repository.

---

## Tools

- Verilog HDL
- ModelSim
- VS Code
- Git

---

## Author

Chieh-Cheng Yang