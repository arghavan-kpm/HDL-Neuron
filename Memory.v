`define NULL 0 
module Memory#(parameter N=1,FileName="weight.txt")(Adr,out);
  input [31:0] Adr;
  output reg signed [7:0] out;
  
  
	reg signed [7:0] MEMO[0:N-1];	
	integer data_file    ; // file handler
	integer scan_file    ; // file handler
	integer index;

  initial begin 
	  	data_file = $fopen(FileName, "r");	
	  	if (data_file == `NULL) begin
	    		$display("data_file handle was NULL");
	    		$finish;
	  	end
	  	for (index=0; index < N; index = index + 1)
	 		scan_file = $fscanf(data_file, "%b\n", MEMO[index]);
	end
	always@(*) begin
	   out <= MEMO[Adr];
	end
	  

endmodule
