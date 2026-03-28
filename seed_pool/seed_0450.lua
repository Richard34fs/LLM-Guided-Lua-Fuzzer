local t = {name="John", age=30}
print(t["name"])
print(t.age)
local x = "10" + 2
print(x)
for i=1,5 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
print(i)
end