local t = {}
for i = 1, 10 do
t[i] = tostring(i)
end
local sum = 0
for i = 1, 10 do
sum = sum + tonumber(t[i])
end
print(sum)