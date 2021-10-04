`timescale 1ns / 1ps
`include "andgate.v"
`include "xorgate.v"
`include "subtractor.v"

module alu(a, b, c, y);
input [31:0] a, b;
input[1:0] c;
output reg [31:0] y;

reg[31:0] com;
wire[31:0] y0;
wire[31:0] y1;
wire[31:0] y2;
wire[31:0] y3;

andgate temp2(a, b, y0);
xorgate temp3(a, b, y1);
adder temp0 (a, b, y2, waste);
subtractor temp1(a, b, y3, junk);

always @ (*)

case(c)
	0: y<=y0;
	1: y<=y1;
	2: y<=y2;
	3: y<=y3;
endcase
 

endmodule

