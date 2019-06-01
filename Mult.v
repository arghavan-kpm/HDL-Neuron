module Mult (A, B, out);

	input signed [7:0] A, B;
	output signed [7:0] out;
  reg signed [15:0] outreg = 0;
	always@(*) begin
		
		outreg <= A * B;

	end
	assign out = outreg[13:6];
endmodule