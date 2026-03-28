local t = {}
for i = 1, 1000 do
local key = "key" .. i
if i % 2 == 0 then
t[i] = i
else
t[key] = i
end
end