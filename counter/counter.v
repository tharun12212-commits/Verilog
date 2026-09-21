module counter(input clk, input rstn, output reg [3:0] out);

always @(posedge clk or negedge rstn) begin
if(!rstn)
out <=4'b0000;
else
out<= out + 1'b1;
end

endmodule