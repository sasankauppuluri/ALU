`include "negate.v"
`include "adder.v"
module subtractor(a, b,  y1, y);
input[31:0] a, b;
output [31:0] y1;
output [32:0] y;

wire[31:0] bcomp;
wire[31:0] b2comp;
genvar i;
for(i=0; i<32; i=i+1)
begin
	negate temp(b[i],bcomp[i]);
end

assign number=32'b1;
adder temp (bcomp, number, b2comp, waste);
adder temp1 (a, b2comp, y1, y);


endmodule

