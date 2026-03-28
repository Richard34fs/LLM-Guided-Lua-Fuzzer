local t = {}
t["hello"] = "world"
print(t["hello"])
local a = 1 + "2"
print(a)
for i = 1, 10 do
if i % 2 == 0 then
i = tostring(i)
else
i = tonumber(i)
end
print(i)
end