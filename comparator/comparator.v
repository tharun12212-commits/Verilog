module comparator(input a, input b, output y1, output y2, output y3);
assign y1=~a&b;
assign y2=~a&b|a&~b;
assign y3=a&~b;
endmodule