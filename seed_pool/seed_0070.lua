local t = {}
t["foo"] = 42
print(t["foo"])
local s = "10" + 2
print(s)
for i = 1, 5 do
t[i] = i * 2
end
t["bar"] = true