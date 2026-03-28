local t = {}
t["foo"] = 42
print(t["foo"])
local s = "10"
s = s + 1
print(s)
for i = 1, 5 do
local x = i * 2
if x == 6 then
x = tostring(x)
else
x = tonumber(x)
end
print(type(x))
end