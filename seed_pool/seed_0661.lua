local t = {}
t["foo"] = 42
print(t["foo"])
local x = "10" + 2
print(x)
for i = 1, 5 do
if i % 2 == 0 then
i = tostring(i)
else
i = tonumber(i)
end
print(i)
end