local t = {a=1, b=2}
do
    local function foo(i)
        t[i] = i*2
        t[i] = t[i] + t["b"]
        t[i] = t[i] * t.a
    end

    for i=1,10 do
        foo(i)
    end
end
print(t[5])