local t = {}
for i = 1, 1000 do
local key = tostring(i)
if i % 2 == 0 then
key = i/2
end
t[key] = i
end