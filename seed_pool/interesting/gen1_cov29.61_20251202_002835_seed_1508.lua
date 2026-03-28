local t = {}
for i = 1, 1000 do
  local key = (i % 4 == 0) and tostring(i) or i
  t[key] = i * 2
end
local a, b, c = 1, 2, 3
a = 5
b = 6
c = 7
print(a, b, c)