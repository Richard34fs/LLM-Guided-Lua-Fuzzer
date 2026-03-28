local t = {}
t[1] = "one"
t["one"] = 1
print(t[1])
print(t["one"])
local a, b = 1, "2"
print(a + b)
for i = 1, 3 do
t[i] = i
end
print(t["one"])