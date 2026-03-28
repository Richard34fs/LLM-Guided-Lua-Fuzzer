a = {}
i = 1
while i <= 10 do
  a[i] = tostring(i) .. i
  i = i + 1
end
for k, v in pairs(a) do
  a[v] = tonumber(k) + tonumber(string.sub(v, -1))
end
for k, v in pairs(a) do
  print(type(k), type(v))
end