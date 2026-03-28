local t = {}
for i = 1, 1000 do
  t[tostring(i)] = i, tostring(i)
  t[i] = tostring(i)
end