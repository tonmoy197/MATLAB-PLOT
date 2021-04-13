clc
clear 
close all
%dI/dt = -(I*R-V)/L,I(0)=0

% sol=dsolve('DI = -(I*R-V)/L','I(0)=0');
x=linspace(-5,5,410);
y=linspace(0,10,41);
[X,Y] = meshgrid(x,y);
Z=1./(1+(X+0.5*X).^2);
surf(X,Y,Z);
view(120,45)
