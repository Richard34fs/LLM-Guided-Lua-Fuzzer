local t = {}
for i=1,10 do
local key = tostring(i)
t[key] = i
end
for k,v in pairs(t) do
assert(tonumber(k) == v)
end