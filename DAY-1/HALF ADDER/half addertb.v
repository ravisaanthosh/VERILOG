module half_adder_tb;
  reg a, b;
  wire sum, carry;

  // Instantiate the half adder
  half_adder uut (.a(a), .b(b), .sum(sum), .carry(carry));

  initial begin
    $dumpfile("halfaddertb.vcd");
    $dumpvars;

    a = 0; b = 0; #5;
    $display("a=%b b=%b => sum=%b carry=%b", a, b, sum, carry);

    a = 0; b = 1; #5;
    $display("a=%b b=%b => sum=%b carry=%b", a, b, sum, carry);

    a = 1; b = 0; #5;
    $display("a=%b b=%b => sum=%b carry=%b", a, b, sum, carry);

    a = 1; b = 1; #5;
    $display("a=%b b=%b => sum=%b carry=%b", a, b, sum, carry);

    #10 $finish;
  end
endmodule
