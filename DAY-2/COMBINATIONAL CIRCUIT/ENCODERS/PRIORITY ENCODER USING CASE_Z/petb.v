module petb;

  reg [7:0] in;
  wire [2:0] out;


  pe uut (in, out);

  initial begin
    $monitor($time, " in=%b out=%b", in, out);
    $dumpfile("pe.vcd");
    $dumpvars(0, petb);


    in = 8'b1000_0000; #10;
    in = 8'b0100_0000; #10;
    in = 8'b0010_0000; #10;
    in = 8'b0001_0000; #10;
    in = 8'b0000_1000; #10;
    in = 8'b0000_0100; #10;
    in = 8'b0000_0010; #10;
    in = 8'b0000_0001; #10;
    in = 8'b0000_0000; #10; 
  end

endmodule
