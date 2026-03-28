local t = {}
t["123"] = "abc"
print(t[123])
for i = 1, 10 do
t[i] = tostring(i)
end
print(t["1"])
local a, b = 1, "2"
a = a + b