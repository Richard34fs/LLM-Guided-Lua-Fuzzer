local t = {}
t["123"] = "one two three"
t[123] = 123
for k, v in pairs(t) do
print(type(k), type(v))
end
local a, b = 123, "123"
print(a + b, a .. b)