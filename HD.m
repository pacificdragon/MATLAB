function d = HD(X,Y)
x=0;
for i=1:length(X)
    if X(i) ~= Y(i)
        x=x+1;
    end
end
d=x;
end