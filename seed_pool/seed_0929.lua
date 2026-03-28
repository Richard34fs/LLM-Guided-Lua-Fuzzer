local t = {}
for i = 1, 1000 do
local key = math.random() > 0.5 and "key" .. i or i
t[key] = i
end