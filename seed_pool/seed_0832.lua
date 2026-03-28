local t = {}
t["foo"] = 42
t[1] = "bar"
local x = t["foo"] + #t[1]
for i = 1, x do
t = {}
t[i] = i
end
print(type(t))