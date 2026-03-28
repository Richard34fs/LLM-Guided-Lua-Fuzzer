t = {}
for i = 1, 1000 do
  t[tostring(i)] = i
  t[i] = i
end
local a, b, c = 1, 2, 3
a = 4
b = 5
c = 6
if true then
  local d, e, f = 7, 8, 9
  d = 10
  e = 11
  f = 12
end