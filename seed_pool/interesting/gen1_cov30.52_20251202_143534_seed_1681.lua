local t = {}
t["foo"] = 42
t[2 + 3] = "bar"
for i = 1, 10 do
    if i % 2 == 0 then
        t[i] = true
    else
        t[i] = false
    end
end
print(t["foo"])
print(t[5])
for k, v in pairs(t) do
    print(k, v)
end