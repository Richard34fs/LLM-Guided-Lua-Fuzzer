local t = {x = 20}
for i = 1, 10 do
local key = tostring(i)
t[key] = t[key] or 0
t[key] = t[key] + i
end
print(t["10"])