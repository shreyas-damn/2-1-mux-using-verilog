Overview
This project implements a parameterized 2:1 Multiplexer (MUX) in Verilog along with a testbench for simulation and verification.
A 2:1 MUX selects one of two input signals based on a control signal (sel) and forwards it to the output.

mux21.v
The main module implements a parameterized multiplexer.
Parameters
width : Defines the bit-width of input and output signals (default can be set in module)

Inputs
a [width-1:0] : First input
b [width-1:0] : Second input
sel : चयन (select signal)

Output
y [width-1:0] : Output signal
Functionality
If sel = 0 → y = a
If sel = 1 → y = b


mux21_tb.v
The testbench verifies the functionality of the MUX.

Features:
Parameterized width (width_tb = 5)
Multiple test cases covering:
sel = 0
sel = 1
Different input combinations
Waveform generation using:
$dumpfile("sim.vcd")
$dumpvars
Monitoring:
Displays real-time simulation values:
Time | sel | a | b | y
