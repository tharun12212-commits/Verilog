`timescale 1ns/1ps
module comparator_tb;
reg a,b;
wire y1, y2, y3;

comparator uut(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3));
initial begin
$dumpfile("output.vcd");
$dumpvars(0, comparator_tb);
$monitor("Time=%0t | a=%b b=%b | y1=%b y2=%b y3=%b",$time,a,b,y1,y2,y3);

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

$finish;

end
endmodule

