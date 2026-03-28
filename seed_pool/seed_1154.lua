local t = {}
t["123"] = 10
t[123] = "abc"
for k, v in pairs(t) do
print(k, v)
end