local t = {}
for i = 1, 10 do
    t[i] = tostring(i)
end
local sum = 0
for i, v in pairs(t) do
    sum = sum + (tonumber(v) & 3) -- Bitwise AND operation
end
print(sum)