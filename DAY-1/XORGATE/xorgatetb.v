module xorgatetb;
  reg a, b;
  wire y;

  // Instantiate the XOR gate
  xorgate uut (.a(a), .b(b), .y(y));

  initial begin
    $dumpfile("xorgatetb.vcd");
    $dumpvars;

    a = 0; b = 0; #5;
    $display("a=%b b=%b y=%b", a, b, y);

    a = 0; b = 1; #5;
    $display("a=%b b=%b y=%b", a, b, y);

    a = 1; b = 0; #5;
    $display("a=%b b=%b y=%b", a, b, y);

    a = 1; b = 1; #5;
    $display("a=%b b=%b y=%b", a, b, y);

    #10 $finish;
  end
endmodule
