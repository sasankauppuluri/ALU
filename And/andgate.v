`timescale 1ns / 1ps
`include "single.v"

module andgate(a,b,y);
input [31:0] a,b;
output  [31:0] y;
genvar i;

	for(i=0; i<32; i=i+1)
	begin
		single temp (a[i], b[i], y[i]);
	end
endmodule

