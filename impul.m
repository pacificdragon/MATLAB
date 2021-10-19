clc
clear all
x=imp (0,-4,4)+2*imp (2,-4,4)+3*imp(-3,-4,4)
n=-4:4
stem(n,x)
xlable ('n')
ylable ('x[n]')