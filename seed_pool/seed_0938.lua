local t = {}
for i = 1, 1000 do
local key = tostring(i)
t[key] = value
end
local t = {}
for i = 1, 1000 do
t[i] = value
t[i + 0.5] = value
end