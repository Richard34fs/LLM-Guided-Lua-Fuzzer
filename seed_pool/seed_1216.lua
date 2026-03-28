local t = {}
for i = 1, 1000 do
local key = tostring(i)
if i % 3 == 0 then
key = tostring(i + 0.5)
end
t[key] = i
end