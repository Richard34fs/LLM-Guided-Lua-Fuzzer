local t = {}
t["123"] = "abc"
pcall(function()
    print(t[123])
end)
for i = 1, 10 do
    t[i] = tostring(i)
end
pcall(function()
    print(t["1"])
end)
local a, b = 1, "2"
a = a + b