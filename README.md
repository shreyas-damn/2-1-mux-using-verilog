<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2:1 Multiplexer (Verilog)</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f5f7fa;
            color: #333;
        }
        h1, h2, h3 {
            color: #2c3e50;
        }
        .container {
            max-width: 900px;
            margin: auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        code {
            background: #eef;
            padding: 4px 6px;
            border-radius: 5px;
            font-size: 14px;
        }
        pre {
            background: #eef;
            padding: 10px;
            border-radius: 8px;
            overflow-x: auto;
        }
        ul {
            line-height: 1.6;
        }
        .section {
            margin-bottom: 25px;
        }
    </style>
</head>
<body>
<div class="container">

    <h1>2:1 Multiplexer (Parameterized) in Verilog</h1>

    <div class="section">
        <h2>Overview</h2>
        <p>
            This project implements a parameterized 2:1 Multiplexer (MUX) in Verilog along with a testbench for simulation and verification.
        </p>
        <p>
            A 2:1 MUX selects one of two input signals based on a control signal (<code>sel</code>) and forwards it to the output.
        </p>
    </div>

    <div class="section">
        <h2>mux21.v</h2>
        <p>The main module implements a parameterized multiplexer.</p>

        <h3>Parameters</h3>
        <ul>
            <li><code>width</code> : Defines the bit-width of input and output signals</li>
        </ul>

        <h3>Inputs</h3>
        <ul>
            <li><code>a [width-1:0]</code> : First input</li>
            <li><code>b [width-1:0]</code> : Second input</li>
            <li><code>sel</code> : Select signal</li>
        </ul>

        <h3>Output</h3>
        <ul>
            <li><code>y [width-1:0]</code> : Output signal</li>
        </ul>

        <h3>Functionality</h3>
        <ul>
            <li>If <code>sel = 0</code> → <code>y = a</code></li>
            <li>If <code>sel = 1</code> → <code>y = b</code></li>
        </ul>
    </div>

    <div class="section">
        <h2>mux21_tb.v</h2>
        <p>The testbench verifies the functionality of the MUX.</p>

        <h3>Features</h3>
        <ul>
            <li>Parameterized width (<code>width_tb = 5</code>)</li>
            <li>Multiple test cases covering:
                <ul>
                    <li><code>sel = 0</code></li>
                    <li><code>sel = 1</code></li>
                    <li>Different input combinations</li>
                </ul>
            </li>
            <li>Waveform generation using:
                <ul>
                    <li><code>$dumpfile("sim.vcd")</code></li>
                    <li><code>$dumpvars</code></li>
                </ul>
            </li>
        </ul>

        <h3>Monitoring</h3>
        <p>Displays real-time simulation values:</p>
        <pre>Time | sel | a | b | y</pre>
    </div>

</div>
</body>
</html>
