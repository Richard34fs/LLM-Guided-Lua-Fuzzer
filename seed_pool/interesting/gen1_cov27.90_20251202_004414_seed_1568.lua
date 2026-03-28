t = {}
i = 1
while i <= 1000 do
  t[i] = "value" .. i
  t["key" .. i] = "value" .. i
  i = i + 1
end