local t = {}
for i=1,1000 do
local key = (i % 3 == 0) and tostring(i) or i
t[key] = i
end