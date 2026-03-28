local t = {a = 20}
for i = 1, 10 do
local k = tostring(i)
t[k] = t[k] or 0
t[k] = t[k] + 1
end
for k, v in pairs(t) do
print(k, v)
end