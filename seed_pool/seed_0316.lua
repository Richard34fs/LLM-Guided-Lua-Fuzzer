local t = {}
t["foo"] = 42
print(t["foo"])
local a = "1" + 1
print(a)
for i = 1, 3 do
t[i] = i * 2
end
print(t[3])