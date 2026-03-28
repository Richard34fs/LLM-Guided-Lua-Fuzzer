local t = {a=1}
for i=1,10 do
    local function f(i)
        t[i] = i
        t["a"..i] = i*2
    end
    f(i)
end
print(t["a1"] + t[1])