`timescale 1ns/1ps
module fullsubtractor_tb;
reg a,b,bin;
wire difference,borrow;


fullsubtractor uut(.a(a),.b(b),.bin(bin),.difference(difference),.borrow(borrow));

initial begin
$dumpfile("output.vcd");
$dumpvars(0, fullsubtractor_tb);
$monitor("Time=%0t |a=%b b=%b bin=%b |difference=%b borrow=%b",$time,a,b,bin,difference,borrow);

a=0; b=0; bin=0; #10;
a=0; b=0; bin=1; #10;
a=0; b=1; bin=0; #10;
a=0; b=1; bin=1; #10;
a=1; b=0; bin=0; #10;
a=1; b=0; bin=1; #10;
a=1; b=1; bin=0; #10;
a=1; b=1; bin=1; #10;

$finish;

end
endmodule