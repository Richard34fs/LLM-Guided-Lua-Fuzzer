local t = {}
t["foo"] = "bar"
print(t["foo"])
t[1] = 2
print(t[1])
for i = 1, 10 do
t[i] = i * 2
end
print(t[5])
local x = "10"
local y = 5
print(x + y)