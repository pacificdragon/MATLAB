# MATLAB

### Basic Programs 

These are the basic matlab codes which we used in our labs.

```
t=0:0.01:0.99;
x=4*cos(5*pi*t-pi/4);
plot(t,x)
```

```
n=0:0.1:2;
x=4*cos(0.1*n*pi);
stem(n,x)
```

```
x=unit(0,0,4)
n=0:4
stem(n,x)
```


```
clc
clear all
circle(1,2,3)
```

```
angle=linspace(0,2*pi,360);
m=cos(angle);
n=sin(angle);
plot(n,m)
axis('equal')
```



```
t=-1:0.01:1;
w=-10:10:10;
x=5*exp(-j*w'*t)
z=imag(x)
plot(t,z)
```

```
t1=-10;0.1;-4.1;
x1=t1*0;
t2=-4:0.1:2.9;
x2=t2+2;
t3=3:0.1:10;
x3=t3-3;
t=[t1 t2 t3];
x=[x1 x2 x3];
plot(t,x)
xlable ('x(t)');
ylable ('y(t)');
title('sig');
```


```
function h = circle(x,y,r)
hold on
th=0:pi/50:2*pi;
xunit=r*cos(th)+x;
yunit=r*sin(th)+y;
h=plot(xuit,yunit);
hold off
```

```
clc
x=[1 2 3 4]
m=0:3;
subplot(2,1,1)
stem(m,x);
[y1,n1]=sigshift(x,m,2);
subplot(2,1,2)
stem(n1,y1);
```
