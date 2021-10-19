function sum = fit(X)
Price=[1 2 3 4 5 6 7 8 9 10];
x=0;
for j=1:length(X)
if X(j) == 1
    x=x+Price(j);
end
sum=x;
end