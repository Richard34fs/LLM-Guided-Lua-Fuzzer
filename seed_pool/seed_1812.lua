local t = {}
for i = 1, 1000 do
local key = tostring(i) .. "_1"
t[key] = i
end
for i = 1, 1000 do
local key = tostring(i) .. "_2"
t[key] = "value_" .. i
end