local t = {}
t["foo"] = "bar"
print(t["foo"])
local foo = "10"
local bar = 20
print(foo + bar)
for i = 1, 5 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
print(type(i))
end