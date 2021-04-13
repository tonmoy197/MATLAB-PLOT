clc
clear

% for some random values
% f=@(x,y) x.^2 + 2*y.^2;
% fsurf(f);
% fsurf(f,[-10,10],'showcontours','on')


%for specific values

x=-4:0.1:4;
y=-1:0.1:4;
[X,Y]=meshgrid(x,y);
F= X.^2 + 2*Y.^2;
surf(X,Y,F);

for i=0:100
    view(-38+i*5,30)
     drawnow
    pause(0.20);
end