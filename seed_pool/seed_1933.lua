local t = {}
t["foo"] = 42
print(t["foo"])
local s = "5"
print(s + 1)
for i = 1, 3 do
if i == 1 then
i = i .. ""
elseif i == 2 then
i = tonumber(i)
else
break
end
print(i + 1)
end