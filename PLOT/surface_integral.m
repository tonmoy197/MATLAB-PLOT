% x=linspace(0,1,20);
% y=linspace(0,2,20);
% [x,y]=meshgrid(x,y);
% 
% %exp-->e to the power
% z=x.*exp(-x.*y);
% 
% surf(x,y,z,'facealpha',0.5);
% hold on
% surf(x,y,0*x,'facecolor','green','facealpha',0.5);
% 
% 
% pause(1);
% for i=0:100
%     view(-38+i*5,30)
%      drawnow
%     pause(0.20);
% end
% hold off

clc
clear
syms x y z
%to take input a function
s=input("Enter the function surface integrals:");
gx=diff(s,x);
gy=diff(s,y);
disp(gx);
disp(gy);

f=sqrt(1+gx.^2+gy.^2);
disp(f)

disp("What kind of region you have?");
disp("1:Rectangular region");
disp("2:Region define by one single bounded function");
disp("3:Region Defined with intersection with defferent curve");
disp("4:Region Defined by two different curve and different limits");

m=input("Value:");

if m==1
    a=input("Upper Limit of x");
    b=input("Lower Limit of x");
    c=input("Upper Limit of y");
    d=input("Lower Limit of y");
    result1=int(f,x,a,b);
    result=int(result1,y,c,d);
    disp(result);

elseif m==2
    r1=input("Enter your region such that o is in rhs");
    disp(r1);
    
    b=solve(r1==0,y);
    disp(b);
    a=solve(limit(r1,y,0)==0,x);
    disp(a);
    
    result1=int(f,y,b(2),b(1));
    disp(result1);
    result=int(f,x,a(1),a(2));
    disp(result);
    
elseif m==3
    p=input("Upper curve such that rhs =0 :");
    q= input("Lower curve such that rhs =0 :");
    
    s=solve(limit(p,y,0)==limit(q,y,0),x);
    
    p=solve(p,y);
    q=solve(q,y);
    
    result1=int(f,y,q,p);
    result=int(result1,x,s(1),s(2));
    disp(rasult);
    
elseif m==4
     p=input("Upper curve such that rhs =0 :");
    q= input("Lower curve such that rhs =0 :");
    a=input("Loweer limit of x");
    b=input("Upper Limit of x");
    
     result1=int(f,y,q,p);
    resut=int(result1,x,a,b);
    
end


    
    
    
    



