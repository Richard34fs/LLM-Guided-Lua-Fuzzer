local t = {}
for i = 1, 1000 do
local key = tostring(i)
t[key] = i
end
for j = 1, 1000 do
local key = tostring(j) .. "a"
t[key] = j
end