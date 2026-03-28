local t = {}
t["\a\b\f\n\r\t\v\\\"\0123"] = 20
print(t[10])
for i = -1, 10 do
    t[i] = i * 2
end
for k, v in pairs(t) do
    print(k .. " " .. tostring(v))
end