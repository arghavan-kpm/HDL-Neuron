module Adder#(parameter N = 1) (A, B, out);

	input signed [7:0] A;
	input signed [(N+7):0] B;
	output reg signed [N+7:0] out = 0;

	always@(*) begin
		
		out <= A + B ;

	end
endmodule