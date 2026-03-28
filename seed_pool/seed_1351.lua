local t = {}
t["foo"] = 42
t[4] = "bar"
for i = 1, 5 do
if i % 2 == 0 then
t[i] = i * 2
else
t[i] = tostring(i * 3)
end
end
print(t["foo"] + t[4])
for k, v in pairs(t) do
print(k, v)
end