# 32-bit-Five-Stage-Pipeline-MIPS-Design-and-Implementation
This project involves designing and implementing a **5-stage 32-bit pipeline MIPS architecture** using Verilog. The stages of the pipeline include instruction fetch, instruction decoding, execution, memory access, and write-back.
# Introduction:
This project involves the design and implementation of a 32-bit Five Stage Pipeline MIPS processor.The five stages of this processor include Instruction Fetch, Instruction Decode, Execution, Memory Access, and Write Back. Each stage plays a crucial role in the processing of instructions, contributing to the overall performance of the system. This project aims to explore these stages in detail, understand their workings, and implement them effectively to create a functional MIPS processor.

# Project Overview:
This Project is simply a Design of pipeline MIPS processor written in Verilog (VHDL) with handling of Data hazards and forwarding process to achieve the maximum performance in units of clock cycles. Also, this Design Code is written in simple way without any complexities, and every single module is written in a separate file to avoid coding traffic and to manage and distribute tasks on all members in the team; which makes the development process easier and co-operative.

# Features:
The processor incorporates a streamlined five-step workflow, mirroring the well-established MIPS architecture stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory Access (MEM), and Write Back (WB).
To enhance efficiency, it employs a Forwarding Unit that dynamically reroutes data from later pipeline stages directly back to the Execution stage when required, thus preemptively resolving potential data conflicts and minimizing stalls.
Furthermore, it features a Hazard Detection Unit, which actively identifies and manages hazards that could disrupt the smooth flow of instructions through the pipeline. By promptly detecting and addressing these hazards, it ensures seamless and accurate program execution.

# Files must Included:
The processor's design encompasses a series of interconnected modules:
- Control Unit: Orchestrates the flow of instructions and data between different stages of the processor.
- Instruction Fetcher: Fetches instructions from memory during the first stage of the pipeline.
- Decoder Unit: Decodes fetched instructions to determine the operation to be executed.
-Arithmetic Logic Unit (ALU): Executes arithmetic and logic operations specified by the decoded instructions.
- Memory Unit: Handles data access to and from memory, including loads and stores.
- Write-Back Unit: Writes the results of executed instructions back to the appropriate registers or memory locations.
- Data Forwarding Logic: Facilitates the forwarding of data between pipeline stages to resolve data hazards efficiently.
- Hazard Detection Mechanism: Detects and resolves potential hazards that could disrupt the normal operation of the processor.
Additionally, a comprehensive testbench is provided to simulate and validate the functionality of the processor design.

# Team tasks division:
Study and Research - Both members

Design - Both members

Implementation: IF_Stage.v , ID_Stage.v ,EX_Stage.v and Forwarding_Unit.v - Aseel Zhour

Implementation : MIPS_Processor.v, MEM_Stage.v, WB_Stage.v and Hazard_Detection_Unit.v - Subhia Theeb

Simulation & Testbench Development - Subhia Theeb

Integration - Subhia Theeb

Testing and Debugging - Aseel Zhour

Review and Revision - both members

Report writing - Aseel Zhour

# Simulation and Testing:

Instructions for running simulations:
1. Make sure you have a Verilog simulation tool such as ModelSim or Icarus Verilog installed.
2. Compile all Verilog files using the compilation command provided by your simulation tool.
3. Execute the testbench file to initiate the processor simulation and analyze the generated results.


