local t = {}
for i = 1, 1000 do
local key = math.random(1, 100)
t[key] = i
end
for i = 1, 1000 do
local key = tostring(math.random(1, 100))
t[key] = i
end