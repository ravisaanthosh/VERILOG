1) reg a,b;
always@(a,b) begin
#10 a <= 1'b0;
#1 b <= 1'b1;
a <= 1;
#5 b <= a;
$display($time,"a=%d,b=%d",a,b);
end

answer 1 


2) reg a,b;
always@(a,b) begin

Page 3

#10 a = 1'b0;
#1 b = 1'b1;
a = 1;
#5 b = a;
$display($time,"a=%d,b=%d",a,b);
end

answer 1



3) reg a,b;
initial begin
a=1;
b=a;
$display($time,"a=%d,b=%d",a,b);
end
initial begin
#1 a<=1;
b<=a;
$display($time,"a=%d,b=%d",a,b);
end

answer 1
