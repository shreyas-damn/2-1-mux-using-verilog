`timescale 1ns/1ps
module mux21 #(parameter width = 5)(
    input sel,
    input [width-1:0]a,
    input [width-1:0]b,
    output reg [width-1:0]y
);
always @(*) begin
    case (sel)
        1'b0: y = a;
        1'b1: y = b;
        default: y = {(width+1){1'bz}};
    endcase
end
endmodule
