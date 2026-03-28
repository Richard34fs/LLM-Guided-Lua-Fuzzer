local t = {foo = 2}
for i = 1, 10 do
local key = "bar" .. i
t[key] = t[key] or 0
t[key] = t[key] + 1
end
print(t.foo)
print(t.bar10)