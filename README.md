# 2:1 Multiplexer (Parameterized) in Verilog

## Overview
This project implements a parameterized 2:1 Multiplexer (MUX) in Verilog along with a testbench for simulation and verification.

A 2:1 MUX selects one of two input signals based on a control signal (`sel`) and forwards it to the output.

---

## mux21.v
The main module implements a parameterized multiplexer.

### Parameters
- `width` : Defines the bit-width of input and output signals

### Inputs
- `a [width-1:0]` : First input  
- `b [width-1:0]` : Second input  
- `sel` : Select signal  

### Output
- `y [width-1:0]` : Output signal  

### Functionality
- If `sel = 0` → `y = a`  
- If `sel = 1` → `y = b`  

---

## mux21_tb.v
The testbench verifies the functionality of the MUX.

### Features
- Parameterized width (`width_tb = 5`)
- Test cases covering:
  - `sel = 0`
  - `sel = 1`
  - Different input combinations

### Waveform Generation
- `$dumpfile("sim.vcd")`
- `$dumpvars`

### Monitoring
- `Displays real-time simulation values:`
  `Time | sel | a | b | y`

  <img width="772" height="288" alt="image" src="https://github.com/user-attachments/assets/b9518077-51e0-47a3-9c35-e16595bf30cc" />


### GTKwave Waveform

  <img width="2658" height="718" alt="image" src="https://github.com/user-attachments/assets/0a79efa7-7579-4314-933d-0a77768a55b2" />

