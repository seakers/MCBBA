function [z,x] = monteCarlo(min,max,data,interval)
k = 1;
m = size(data);
x = [];
z = [];
for i=min:interval:max
    u = 1;
    y = 0;
    for  j=1:m
        interval = m - j - i;
        if interval < 0
            y = y + std(data([j:m 1:-interval]));
        else
            y = y + std(data(j:(j+i)));
        end
        u = u + 1;
    end
    z(k) = y/u;
    x(k) = i;
    k = k +1;
end
plot(x,z);
            
        