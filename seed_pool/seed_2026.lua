local t = {}
t["hello"] = 10
print(t["hello"])
local s = "5"
print(s + 1)
for i = 1, 3 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
print(i)
end