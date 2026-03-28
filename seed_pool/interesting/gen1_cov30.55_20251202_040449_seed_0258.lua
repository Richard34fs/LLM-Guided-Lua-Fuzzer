local t = {}
for i = 1, 1000 do
  local key = (i % 2 == 0) and "key" .. i or i
  t[key] = i
  for j = 1, 3 do
    print(j)
  end
end