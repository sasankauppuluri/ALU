`timescale 1ns / 1ps


module subtractor_test;

	// Inputs
	reg  [31:0]a;
	reg  [31:0]b;

	// Outputs
	wire [31:0]y1;
	wire [32:0]y;
	// Instantiate the Unit Under Test (UUT)
	subtractor uut (
		.a(a), 
		.b(b), 
		.y1(y1),
		.y(y)
	);

	initial begin
		$dumpfile("subtractor_test.vcd");
     	$dumpvars(0,subtractor_test);
	
	a = 32'b00101111000001001001000110000001;
		 b = 32'b01000000011100001100010001110001;
       
	 
	#100; 	a = 32'b10000000000000000000000001100010;
		b = 32'b00110011111111100011011110000011;	
	
	#100; 	a = 32'b00000000000000000000000000000010;
		b = 32'b11111111111111111111111111111111;
	 		

	 #100;  a = 32'b10101011111101001010101010101111;
		b = 32'b10000000001111111111110000000000;
	 #100;
	

	end
		initial begin 
		$monitor("a=%b b=%b 32bit=%b 33bit=%b\n",a,b,y1, y);
		end      
endmodule

