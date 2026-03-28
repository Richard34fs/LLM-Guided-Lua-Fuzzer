local t = {}
t["hello"] = "world"
print(t["hello"])
local a = "123"
a = a + 1
print(a)
for i = 1, 10 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
print(type(i))
end