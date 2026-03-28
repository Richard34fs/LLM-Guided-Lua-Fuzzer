local t = {}
t[{}] = 20
t["10"] = 30
for i = 1, 3 do
local k = tostring(i)
print(k, t[k])
if i == 3 then
t[3] = "three"
end
end