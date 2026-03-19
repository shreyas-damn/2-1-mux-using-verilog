`timescale 1ns/1ps
module mux21_tb();
localparam width_tb = 5;
reg [width_tb-1:0] a_tb, b_tb;
reg sel_tb;
wire [width_tb-1:0]y_op;
mux21 #(.width(width_tb)) DUT(
    .a(a_tb),
    .b(b_tb),
    .sel(sel_tb),
    .y(y_op)
);
initial begin
    $dumpfile("sim.vcd");
    $dumpvars(0,mux21_tb);
    $monitor ("Time:%0t | sel = %b |a = %b  b = %b | y = %b", $time, sel_tb ,a_tb, b_tb, y_op);
    sel_tb = 1'b0; a_tb = 5'b00000; b_tb = 5'b00000; #10;
    sel_tb = 1'b0; a_tb = 5'b00000; b_tb = 5'b00001; #10;
    sel_tb = 1'b0; a_tb = 5'b00001; b_tb = 5'b00000; #10;
    sel_tb = 1'b0; a_tb = 5'b00001; b_tb = 5'b00001; #10;

    sel_tb = 1'b1; a_tb = 5'b00000; b_tb = 5'b00000; #10;
    sel_tb = 1'b1; a_tb = 5'b00000; b_tb = 5'b00001; #10;
    sel_tb = 1'b1; a_tb = 5'b00001; b_tb = 5'b00000; #10;
    sel_tb = 1'b1; a_tb = 5'b00001; b_tb = 5'b00001; #10;

    $finish;
end
endmodule