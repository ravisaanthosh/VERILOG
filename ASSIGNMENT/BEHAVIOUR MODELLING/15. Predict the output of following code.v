15. Predict the output of following code.?
reg a,b;


initial begin
#10 a <= 1'b0;
#1 b <= 1'b1;
a <= 1;
#5 b <= a;
$display (Stime, "a=%d,b=%d",a,b);

  answer 1
