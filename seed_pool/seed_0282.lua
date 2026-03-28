local t = {}
t["123"] = "abc"
print(t[123])
local a = "10" + 1
print(a)
for i = 1, 5 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
print(i)
end