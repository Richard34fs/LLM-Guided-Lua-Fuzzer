local t = {}
for i = 1, 10 do
    local a, b = "123", 100
    t[a] = b
    t[123] = 200
    print(t["123"])

    if i % 2 == 0 then
        t[i] = tostring(i) .. tostring(i)
    end
end
print(t[5])