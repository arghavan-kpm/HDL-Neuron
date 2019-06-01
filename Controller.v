module Controller#(parameter N=1)(clk,rst, Adr, ready);
    input clk,rst;
    output reg [31:0] Adr = 0;
    output ready;
    
    always@(posedge clk)begin
      if(rst)
        Adr <= 0;
      else
        if(Adr < N)
          Adr <= Adr + 1;
    end
    assign ready = (Adr == N)?1:0;
endmodule
