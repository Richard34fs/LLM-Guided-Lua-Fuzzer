local t = {}
t["foo"] = "bar"
print(t["foo"])
local a = "123" + 1
print(a)
for i = 1, 10 do
  t[i] = i * 2
end
print(t[5])
return t, a, nil