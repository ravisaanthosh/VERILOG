module xnorgatetb;
  reg a, b;
  wire y;

  // Instantiate the XNOR gate
  xnorgate uut (.a(a), .b(b), .y(y));

  initial begin
    $dumpfile("xnorgatetb.vcd");
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
