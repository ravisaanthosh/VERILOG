1. What will be the output of the code?
module task_example_nonblocking;
reg [7:0] a, b, c;
reg [7:0] sum;
// Task to calculate sum using blocking assignment
task calculate_sum;
input [7:0] x, y, z;
output [7:0] total;
begin
total = x + y + z;
end
endtask
initial begin
a = 5;
b = 10;
c = 15;
calculate_sum(a, b, c, sum);
$display("Sum: %d", sum);
end

endmodule

answer 30


2. Write a Verilog code to perform the sum of two numbers using a function ?

module ts;
reg[7:0]result;
reg[7:0]a,b;
function [6:0]sum;
input[6:0]a,b;
begin
sum=a+b;
end
endfunction
initial begin
a = 4;
b = 5;
#10 result = sum(a, b);
end	
initial begin
$display($time,"a=%d,b=%d,result=%d",a,b,sum(a,b));
end
endmodule

  answer 9



  3. Write a Verilog code to perform the sum of two numbers using a task?
    module task_example_nonblocking;
reg [7:0] a, b;
reg [7:0] sum;
// Task to calculate sum using blocking assignment
task calculate_sum;
input [7:0] x, y;
output [7:0] total;
begin
total = x + y;
end
endtask
initial begin
a = 5;
b = 10;
calculate_sum(a, b, c, sum);
$display("Sum: %d", sum);
end

endmodule

answer 20

    
   4. Write a Verilog code to generate 20 odd or even values using a function ?
module gen;
function [7:0] odd;
input [4:0] gen;
begin
odd = gen * 2 + 1;
end
endfunction
integer i;
initial begin
for (i = 0; i <= 20; i = i + 1)
$display("odd[%0d] = %0d", i, odd(i));
end
endmodule


     



