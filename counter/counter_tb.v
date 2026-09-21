module counter_tb;
reg clk, rstn;
wire [3:0] out;

counter uut(.clk(clk), .rstn(rstn), .out(out));
always begin 
#5; clk=~clk;
end 

initial begin

clk=0; rstn=0;

#10 rstn=1;
#10 rstn=0;

#200

#5 rstn=1;
#15 rstn=0;
#20

$finish;
end 

initial begin
$monitor("Time=%0t | rstn=%b | out=(Binary:%b)", $time, rstn, out);
$dumpfile("output.vcd");
$dumpvars(0, counter_tb);
end
endmodule