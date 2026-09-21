module fullsubtractor (input a, input b, input bin, output difference, output borrow);
assign difference = a^b^bin;
assign borrow = ~a&b|~(a^b)&bin;
endmodule