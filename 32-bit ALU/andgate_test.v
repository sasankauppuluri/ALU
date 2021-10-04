`timescale 1ns / 1ps


module andgate_test;

	//input	
	reg [31:0]a;
	reg [31:0]b;

	//output
	wire [31:0]y;

	
	andgate uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
	
	$dumpfile("andgate_test.vcd"); //used for dumping the waveform in a file that is opened by gkt
     	$dumpvars(0,andgate_test); // used for dumping values in the file which we execute
		a = 32'b11111111111111111111111111111111;
		b = 32'b11111111111111111111111111111111;
		    	
        
		// Add stimulus here
		#100 b=32'b01110111000111111111111000000001;
		#100 a=32'b00000011101011110101010101010100;
		     b=32'b00000000000000000000000000000000;
		#100 a=32'b11000001010111011111100000110001;
		     b=32'b11111110011110111111010101010111;
		#100;
end
		initial begin 
		$monitor("a=%b b=%b y=%b\n",a,b,y);
		end
      
endmodule

