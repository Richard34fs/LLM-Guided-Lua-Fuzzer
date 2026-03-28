local t = {}
for i = 1, 1000 do
local key = "key_" .. i
if i % 2 == 0 then
t[i] = "value"
else
t[key] = "value"
end
end