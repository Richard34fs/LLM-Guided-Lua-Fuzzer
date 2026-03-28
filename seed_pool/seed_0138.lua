local t = {}
t["foo"] = 42
print(t["foo"])
local s = "10"
print(s + 1)
for i = 1, 5 do
if i % 2 == 0 then
i = i .. ""
else
i = tonumber(i)
end
print(i)
end