local t = {}
t["foo"] = 42
print(t["foo"])
local a = "1" + 1
print(a)
for i = 1, 3 do
if i == 1 then
i = i .. ""
elseif i == 2 then
i = tonumber(i)
else
break
end
print(type(i))
end