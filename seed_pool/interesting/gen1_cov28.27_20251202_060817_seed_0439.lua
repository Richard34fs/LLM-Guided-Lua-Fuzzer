local t = {}
for i = 1, 1000 do
  t[i] = i * 2
end
for i = 1, 1000 do
  t["key" .. i] = i * 3
end

return t