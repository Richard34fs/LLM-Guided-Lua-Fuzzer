local t = {}
for i = 1, 1000 do
local key = tostring(i)
t[key] = i * 2
end
t["1"] = "value"
t[1] = "other value"