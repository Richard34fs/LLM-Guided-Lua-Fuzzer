local t = {}
for i=1, 10 do
t[i] = i
t[i] = tostring(t[i])
t[i] = tonumber(t[i])
end
local key = {}
for k, v in pairs(t) do
key[v] = k
end
print(key[10])