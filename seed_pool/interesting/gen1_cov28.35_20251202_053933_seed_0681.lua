local t = {}
for i=1,10 do
  t[i] = tostring(i) .. "foo"
end
local s = 0
for i=1,10 do
  s = s + #t[i] / i
end
print(s)