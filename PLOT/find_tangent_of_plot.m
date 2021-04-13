x_t=3;   % tangent x coordinate

x=0:0.5:5;
y=x.^2.5;
plot(x,y,'*')
hold on
pl=polyfit(x,y,5);
xb=0:0.1:5;
yb=polyval(pl,xb);
plot(xb,yb)
hold on
xn=x(find(x==x_t));
yn=polyval(pl,xn);
i=find(xb==xn);
m=(yb(i+1)-yb(i-1))/(xb(i+1)-xb(i-1));
ynn=yn+m*(xb-xn);
plot(xb,ynn,'k')