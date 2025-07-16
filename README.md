# FPGA-Based Simple CPU Design

A minimalistic CPU architecture implemented on FPGA hardware, featuring a basic instruction set, ALU, register file, and control unit. Perfect for learning digital design, CPU microarchitecture, and FPGA workflows.

---

## Features

- Fully custom 8-bit CPU design
- Components: Instruction Fetch, Decode, Execute (ALU), Register File, Program Counter
- Basic instruction set: LOAD, STORE, ADD, SUB, JMP, and conditional operations
- Memory-mapped I/O support
- Developed in VHDL
- Tested and synthesized using Quartus II

---

## Tech Stack & Tools

- **HDL:** VHDL
- **Tools:** Intel Quartus II
- **Simulation:** ModelSim
- **Hardware Target:** Altera DE2 Board - Cyclone II

---

## Getting Started

1. Open your project in Quartus II.
2. Add source files from `src/`, constraints from `constr/`.
3. Simulate using testbenches in `tb/` to verify CPU behaviour.
4. Synthesize and generate the bitstream under `synth/`.
5. Upload the bitstream to your FPGA board and observe CPU operation via LEDs or serial.

---

## Applications

- Educational tool for CPU design demos
- Experimenting with custom instructions or microcode
- Exploring memory-mapped I/O interfaces

---

## Contact

Feel free to reach out with questions, suggestions, or project collaboration:

- 💼 [LinkedIn](https://www.linkedin.com/in/raeinlp)
- ✉️ Email: raeen.layegh2017@gmail.com
