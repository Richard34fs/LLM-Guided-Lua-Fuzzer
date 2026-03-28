local t = {}
t["123"] = 1
t[123] = 2
print(t["123"])
local s = "1"
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