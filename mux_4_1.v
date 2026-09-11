module mux_2_1(input i0,input i1,input i2,input i3, input sel, output y);

always @(*) begin
case (sel)
2'b00 : y=i0;
2'b01 : y=i1;
2'b10 : y=i2;
2'b11 : y=i4;
default : y=0;
endcase
end
endmodule