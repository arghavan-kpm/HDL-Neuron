module MAC#(parameter N = 1)(clk,rst, x, w, macout);
  input clk,rst;
  input signed [7:0] w, x;
  output signed [N + 7 : 0] macout;
  
  wire [7:0] xwout;
  wire [N+7 : 0] addout,accout;
  Reg #(N+8) acc(addout,clk, 1'b1, rst,accout);
  Mult m(x, w, xwout);
  Adder #(N)add(xwout, accout, addout);
  
  assign macout = accout;
endmodule
