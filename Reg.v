module Reg#(parameter N = 1)(input [N-1:0]D, input clk, enable, rst, output reg [N-1 : 0] Q);
	
	always@(posedge clk)begin
		if(rst) Q <= 0;
		
		else if(enable) Q <= D;
	end
endmodule
