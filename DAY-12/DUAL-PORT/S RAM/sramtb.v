module dpsramtb;
reg clk,rs,wr,rd;
reg [2:0] ad1,ad2;
reg [3:0] da1,da2;
wire [3:0] do1,do2;

dpsram uut(clk,rs,wr,rd,ad1,ad2,da1,da2,do1,do2);

always #5 clk=~clk;

initial begin
clk=0;
rs=0; wr=0; rd=0;
ad1=3'b000; ad2=3'b000;
da1=4'b0000; da2=4'b0000;

    // Reset
#10 rs=1; 
#10 rs=0;

ad1=3'b111; ad2=3'b111;

// test case-1
#10 ad1=3'b001; da1=4'b0101; wr=1;
#10 wr=0;
#10 ad1=3'b001; wr=0;

// test case-2
#10 ad2=3'b001; rd=1;
#10 rd=0;

// test case-3
#10 ad2=3'b010; da2=4'b0111; rd=1;
#10 rd=0;
#10 ad2=3'b010;

// test case-4
#10 ad1=3'b010; da1=4'b0111; wr=1;
ad2=3'b010; da2=4'b0111; rd=1;
#10 wr=0; rd=0;
$finish;
end
initial begin
$dumpfile("dpsram.vcd");
$dumpvars;
end
endmodule
