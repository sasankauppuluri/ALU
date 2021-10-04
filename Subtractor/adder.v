`timescale 1ns / 1ps
`include "operation.v"
`include "copy.v"

module adder(a, b, y1, y);
input [31:0] a, b;
output [31:0] y1;
output [32:0] y;
genvar i;
wire [32:0] carry;
 assign carry[0]=0;

	for(i=0; i<32; i=i+1)
	begin
	operation temp (a[i], b[i], carry[i], carry[i+1], y1[i]);
	end

	for(i=0; i<32; i=i+1)
	begin
	copy temp (y1[i], y[i]);
	end
assign y[32]=carry[32];
endmodule
