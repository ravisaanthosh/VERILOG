16. Predict the output of following code.?

reg a,b;

initial begin a=1; b=a;
$display($time, "a=%d,b=%d",a,b);
end
initial begin #1 a<=1; b<=a;
$display (Stime, "a=%d,b=%d",a,b);
end
answer 1,x
