local t = {}
t["1"] = 123
print(t[1])
local s = "10"
s = s + 1
print(s)
for i = 1, 5 do
if type(i) == "number" then
i = tostring(i)
else
i = tonumber(i)
end
print(i)
end