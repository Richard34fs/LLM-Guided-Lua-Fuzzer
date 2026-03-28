local t = {x=10}
for i=1,10 do
local k = tostring(i)
local v = t[k] or 0
t[k] = v + i
end
print(t["10"])