clc;
clear all;
close all;
P=[0,0,1,1,0,1,1,1,1,1];
Price=[1 2 3 4 5 6 7 8 9 10];
x=0;
for j=1:length(P)
    disp(j);
if P(j) == 1
    x=x+P(j);
end
end