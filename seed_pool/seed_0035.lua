local t = {}
for i = 1, 1000 do
local key = "key" .. i
if i % 10 == 0 then
key = i
end
t[key] = i
end