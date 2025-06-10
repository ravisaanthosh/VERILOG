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

5. Write Verilog code that uses different tasks to perform arithmetic operations.

     module taskadd;
reg[7:0]a,b;
reg[7:0]out;

task add;
input [7:0]a,b;
output [7:0]ot;
begin
ot=a+b;
end
endtask
initial begin
a=5;
b=25;

add(a,b,out);
$display("out=%d,",out);
end
endmodule



     6. Write a Verilog code to create two functions for multiplication and division.
       module mf;
function [15:0]mul;
input[7:0]a,b;
begin
mul=a*b;
end
endfunction

function [15:0]div;
input[7:0]a,b;
begin
div=a/b;
end
endfunction


reg[7:0]x,y;
initial begin
$monior($time,"mul=%b,div=%b,x=%b,y=%b",mul,div,x,y);
$dumpfile("md.vcd");
$dumpvars;
x=10;
y=20;

y=0;

end
endmodule



     7. Write a Verilog function to shift the input data 1 bit to the right.
module shift;
reg[7:0]a,b;
function[7:0]shift_right;
input[7:0]data;
begin
shift_right=data>>1;
end
endfunction
initial begin
a=8'b11110000;
b=shift_right(a);
$display("original (a)=%b",a);
$display("original (b)=%b",b);
end
endmodule


       8. Write Verilog code to demonstrate both automatic and non-automatic tasks. (fix later output error>>>!)
module task_out;
integer out;
task non_auto(output integer out);
integer i=1;
i=i*2;
out=1;
endtask

task automatic task_auto(output integer out);
integer i=1;
i=i*2;
out=i;
endtask
initial begin
non_auto (out);
$display(out);
auto(out);
$display(out);
end
endmodule


       9. Write Verilog code where a task can call both a task and a function. (fix soon)

module sim;
reg[7:0]nu,re;
function [7:0] double;
input[7:0]x;
begin
double= x*2;
end
endfunction

task show_result;
input[7:0]value;
begin
$display("result is :% d",value);
end
endtask
initial begin
nu =6;
result=double(nu);
show_result(re);
end
endmodule

     

         


