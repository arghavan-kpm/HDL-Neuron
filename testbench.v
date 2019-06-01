module testbench();
  localparam N = 3;
  reg clk, rst;
  wire [31:0] Adr;
  wire [7:0] x, w;
  wire [N+7:0] NeuronOut;
  
  Memory #(N, "weight.txt")weightMem(Adr, w);
  Memory #(N, "input.txt")inputMem(Adr, x);
  Neuron #(N) neuron(clk, rst, x, w, Adr, NeuronOut);
  
  initial begin
    clk <= 0;
    rst <= 1;
    #80
    rst <= 0;
  end
  initial repeat(20)begin
    #50
    clk <= 1;
    #50
    clk <= 0;  
  end
endmodule
