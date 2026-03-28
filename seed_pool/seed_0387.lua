local t = {}
for i = 1, 1000 do
local key = tostring(i)
t[key] = i * 2
end
for i = 1001, 2000 do
local key = i
t[key] = i * 3
end