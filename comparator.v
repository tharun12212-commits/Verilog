module comparator(input a, input b, output y);
assign y=~a&b;
assign y=~a&b|a&~b;
assign y=a&~b;
endmodule