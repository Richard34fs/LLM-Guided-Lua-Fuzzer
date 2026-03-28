local t = {}
t["123"] = 456
print(t[123])
for i = 1, 10 do
t[i] = tostring(i) .. "string"
end
print(t[5])
local a, b = 1, "2"
a = a + b
print(a)