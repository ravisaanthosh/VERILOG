module xnorgate (
  input a,
  input b,
  output y
);

  assign y = ~(a ^ b); // XNOR logic: output is 1 when inputs are equal

endmodule
