% syms x
% f=x*2+2*x+2;
% solve(f==0)

clc
clear all
a=-2:0.1:1;
b=-2:0.1:2;
[A,B]=meshgrid(a,b);
plot(A,B,'*');
y=2*(A+1i*B).^2 +2*(A+1i*B) + 2;
y1=abs(y);
% surfc(a,b,abs(y));
plot3(A,B,abs(y),'*') 