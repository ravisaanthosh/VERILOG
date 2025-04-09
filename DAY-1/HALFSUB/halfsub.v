module half_subtractor (
  input a,
  input b,
  output diff,
  output borrow
);

  assign diff = a ^ b;         // XOR gives difference
  assign borrow = (~a) & b;    // Borrow occurs when a=0 and b=1

endmodule
