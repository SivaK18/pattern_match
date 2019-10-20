module test;
reg [3:0]d;
reg [7:0]c;
reg y;
reg x;
reg x1,x2,x3,x4,x5;

pattern p(c,d,x,y,x1,x2,x3,x4,x5);
initial 
begin
$dumpfile("pattern.vcd");
$dumpvars(0,test);
$monitor("%d",y);
d=4'b1110;
c=8'b11100011;
#10
$display("\n****************************************\n");
$display("\n****************** multiple presence are detected **********************\n");

$display("given strings are %b and %b",c,d);
if(x)
$display("%b is the substring of %b  !!!",d,c);
if(x1)
$display("\npresence detected at position 4 ");
if(x2)
$display("\npresence detected at position 3 ");
if(x3)
$display("\npresence detected at position 2 ");
if(x4)
$display("\npresence detected at position 1 ");
if(x5)
$display("\npresence detected at position 0 ");
else
$display("no match ");
$display("\n****************************************\n");
c=8'b10111011;
d=4'b1010;
#10
$display("given strings are %b and %b",c,d);
if(x)
$display("%b is the substring of %b  !!!",d,c);
if(x1)
$display("\n presence detected at position 4 ");
if(x2)
$display("\n presence detected at position 3 ");
if(x3)
$display("\n presence detected at position 2 ");
if(x4)
$display("\n presence detected at position 1 ");
if(x5)
$display("\n presence detected at position 0 ");
else
$display("no match");
$display("\n****************************************\n");
c=8'b11101011;
d=4'b1010;
#10
$display("given strings are %b and %b",c,d);
if(x)
$display("%b is the substring of %b  !!!",d,c);
if(x1)
$display("\n presence detected at position 4 ");
if(x2)
$display("\n presence detected at position 3 ");
if(x3)
$display("\n presence detected at position 2 ");
if(x4)
$display("\n presence detected at position 1 ");
if(x5)
$display("\n presence detected at position 0 ");
else
$display("no match");
$display("\n****************************************\n");
$finish;
end
endmodule
