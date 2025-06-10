module clk;
  reg clk;
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    #50;
    $finish;
  end
endmodule
