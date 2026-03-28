local t = {}
for i=1,1000 do
local key = "key" .. i
t[key] = i
if i % 10 == 0 then
t[i] = i
end
end