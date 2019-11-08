% a)
v = [2 6 12 20 30];
diff(v, 1) % = diff(v)
diff(v, 2)
diff(v, 3)

v0 = 2*ones(1, 7);
v1 = cumsum(v0)

% b)
f1 = [2 5 10 17 26];

constant = 0;
step = 0;
v = f1;
n = length(v);

while constant == 0
    step = step + 1;
    temp = diff(v, step)
    avg = mean(temp);

    for i = 1:n
        if v(i) == avg
            constant = avg;
        end  
    end
end

for k = 0:1
    
    sum = constant;

    for i = step-1:-1:1
        temp = diff(v, i);
        sum = sum + temp(length(temp)); 
    end

    v = [v, sum + v(length(v))];
end

v
