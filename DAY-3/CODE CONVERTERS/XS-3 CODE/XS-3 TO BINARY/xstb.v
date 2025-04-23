module xstb;
 reg [3:0] XS;
 wire [3:0] BCD;
xs uut(.bcd(bcd),.xs(xs));
initial begin
$dumpfile ("xs.vcd");
$dumpvars;
 $monitor ($time,"XS=%b,BCD=%b",XS,BCD);
 XS = 4'b0000;

          #2 XS = 4'b0011;
          #2 XS = 4'b0100;
          #2 XS = 4'b0101;
          #2 XS = 4'b0110;
          #2 XS = 4'b0111;
          #2 XS = 4'b1000;
          #2 XS = 4'b1001;
          #2 XS = 4'b1010;
          #2 XS = 4'b1011;
          #2 XS = 4'b1100;
          #2 XS = 4'b1101;
          #2 XS = 4'b1110;
          #2 XS = 4'b1111;
          #2 XS = 4'b0000;
          #2 XS = 4'b0001;
          #2 XS = 4'b0010;
end
endmodule
