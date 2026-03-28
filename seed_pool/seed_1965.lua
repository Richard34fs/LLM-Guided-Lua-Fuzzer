local t = {}
for i = 1, 1000 do
local key = "key" .. i
t[key] = i
t[i] = i
end