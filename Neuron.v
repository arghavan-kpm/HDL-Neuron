module Neuron#(parameter N=1)(clk, rst, x, w, Adr, NeuronOut);
  input clk, rst; /*rst*/
  input [7:0] x, w;
  output [31:0] Adr;
  output signed [N+7:0] NeuronOut;
  
  wire ready;
  wire [N+7:0] macOut;
  
  Controller #(N)CU(clk, rst, Adr, ready);
  MAC #(N)mac(clk,rst, x, w, macOut);
  ActFunc #(N)actfunc(ready, macOut, NeuronOut);
  
endmodule
