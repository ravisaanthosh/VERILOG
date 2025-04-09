module half_subtractor_tb;
  reg a, b;
  wire diff, borrow;

  // Instantiate the half subtractor
  half_subtractor uut (.a(a), .b(b), .diff(diff), .borrow(borrow));

  initial begin
    $dumpfile("halfsubtb.vcd");
    $dumpvars;

    a = 0; b = 0; #5;
    $display("a=%b b=%b => diff=%b borrow=%b", a, b, diff, borrow);

    a = 0; b = 1; #5;
    $display("a=%b b=%b => diff=%b borrow=%b", a, b, diff, borrow);

    a = 1; b = 0; #5;
    $display("a=%b b=%b => diff=%b borrow=%b", a, b, diff, borrow);

    a = 1; b = 1; #5;
    $display("a=%b b=%b => diff=%b borrow=%b", a, b, diff, borrow);

    #10 $finish;
  end
endmodule
