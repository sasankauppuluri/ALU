module operation(a, b, carryprev, carrynext, y);
input a, b, carryprev;
output carrynext, y;

assign y=a^b^carryprev;
assign carrynext=(a&b)|((a^b)&carryprev);
endmodule
