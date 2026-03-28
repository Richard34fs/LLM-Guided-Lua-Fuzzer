local t = {}
t[2 + "3"] = 40
t["10"] = 20
print(t[2 + "3"])
local a = "10"
local b = 5
for i = 1, 3 do
a, b = a + b, a - b
end
print(a, b)