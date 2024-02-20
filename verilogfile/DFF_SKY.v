module DFF_SKY(D, clk, rst, Q, Qn);
  input D, clk, rst;
  output reg Q, Qn;
  always @(posedge clk, negedge rst) 
  begin
    if (rst) 
    begin
      Q  <= 1;
      Qn <= 0;
    end 
    else 
    begin
      Q  <= D;
      Qn <= ~D;
    end
  end
endmodule