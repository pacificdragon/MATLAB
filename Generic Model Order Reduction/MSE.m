function z = MSE(x,sys1)
num=[x(1) x(2)];
den=[1 x(3) x(4)];
sys2=tf(num,den);
t=0:0.1:10;
y1=step(sys1,t);
y2=step(sys2,t);
z=mean((y1-y2).^2);
end