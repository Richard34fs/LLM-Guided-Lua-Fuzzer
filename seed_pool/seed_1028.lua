local t = {}
t["123"] = "abc"
print(type(t["123"]))
for i = 1, 10 do
t[i] = i * 2
end
for k, v in pairs(t) do
print(k .. " : " .. tostring(v))
end