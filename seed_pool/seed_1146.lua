local t = {}
t["foo"] = 42
t[8] = "bar"
for i = 1, 3 do
t[i] = i + 10
t[i] = tostring(t[i]) .. " baz"
end
print(t["foo"], t[8], t[1], t[2], t[3])