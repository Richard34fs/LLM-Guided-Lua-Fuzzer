local t = {}
for i = 1, 1000 do
local key = tostring(i) .. "key"
t[key] = i
end
for i = 1, 1000 do
local key = i
t[key] = i
end