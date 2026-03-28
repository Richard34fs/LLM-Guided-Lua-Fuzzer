local t = {}
for i = 1, 1000 do
local key = tostring(i) .. tostring(i % 10)
t[key] = i
end
print(#t)