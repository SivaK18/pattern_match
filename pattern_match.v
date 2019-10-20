module pattern(c,d,x,y,x1,x2,x3,x4,x5);
input [3:0]d;
input [7:0]c;
output  x;
output reg y ;
wire d1,d2,d3,d4,a,b;
wire d21,d22,d23,d24,a2,b2;
wire d31,d32,d33,d34,a3,b3;
wire d41,d42,d43,d44,a4,b4;
wire d51,d52,d53,d54,a5,b5;

output x1,x2,x3,x4,x5;
wire y1,y2,y3,y4,y5;
integer i;
//reg [7:0]f;


//reg [7:0]g;


reg z;
//always @(*)
//for (i=0; i<5 ; i=i+1) begin


//g[i] = c[i];
//f[i] = d[i];

//if(g[i] == f[i])

//xnor p(d1,g[i],f[i]);
//xnor q(d2,c[i],d[i+1]);
//xnor(d3,c[i],d[i+2]);
//xnor(d4,c[i],d[i+3]);
//end



xnor p(d1,c[0],d[0]);
xnor q(d2,c[1],d[1]);
xnor r(d3,c[2],d[2]);
xnor s(d4,c[3],d[3]);

and t(a,d1,d2);
and u(b,d3,d4);
and v(x1,a,b);

always @(*)
begin
if(x1==1)
y = 4'b0100;

end 

xnor p5(d51,c[1],d[0]);
xnor q5(d52,c[2],d[1]);
xnor r5(d53,c[3],d[2]);
xnor s5(d54,c[4],d[3]);

and t5(a5,d51,d52);
and u5(b5,d53,d54);
and v5(x2,a5,b5);

always @(*)
begin
if(x2==1)
y = 4'b0011;
end

xnor p2(d21,c[2],d[0]);
xnor q2(d22,c[3],d[1]);
xnor r2(d23,c[4],d[2]);
xnor s2(d24,c[5],d[3]);

and t2(a2,d21,d22);
and u2(b2,d23,d24);
and v2(x3,a2,b2);
always @(*)
begin
if(x3==1)
y = 4'b0010;
end


xnor p3(d31,c[3],d[0]);
xnor q3(d32,c[4],d[1]);
xnor r3(d33,c[5],d[2]);
xnor s3(d34,c[6],d[3]);

and t3(a3,d31,d32);
and u3(b3,d33,d34);
and v3(x4,a3,b3);

always @(*)
begin
if(x4==1)
y = 4'b0001;
end


xnor p4(d41,c[4],d[0]);
xnor q4(d42,c[5],d[1]);
xnor r4(d43,c[6],d[2]);
xnor s4(d44,c[7],d[3]);

and t4(a4,d41,d42);
and u4(b4,d43,d44);
and v4(x5,a4,b4);



always @(*)
begin
if(x5==1)
y = 4'b0000;
end

or p0(y1,x1,x2);
or q0(y3,x3,x4);
or r0(y5,x1,x5);
or s0(x,y3,y5);

endmodule
