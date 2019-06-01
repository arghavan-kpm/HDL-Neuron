module ActFunc#(parameter N=1)(ready, accout, actout);
  input ready;
  input signed [N+7:0] accout;
  output reg signed [N+7:0] actout;
  reg signed [N+7:0]half =0;
  always@(*)begin
      half[5] <= 1;   // make a N+8 bit signed 0.5
      if(ready)
        actout <= (accout > half)?accout:0; 
      else
        actout <= 0;
  end
endmodule
