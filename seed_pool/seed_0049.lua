local t = {}
t["foo"] = 42
print(t["foo"])
local s = "10"
local i = tonumber(s)
print(i + 1)
for i = 1, 5 do
local a = i
if a == 3 then
a = "three"
end
print(a)
end