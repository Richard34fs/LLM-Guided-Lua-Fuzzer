local t = {a = "1", b = 2}
t[t.a] = t.b
print(t["1"])
local a = "10" + 1
print(a)
for i = 1, 3 do
local a = i
print(a)
end
print(type(a))