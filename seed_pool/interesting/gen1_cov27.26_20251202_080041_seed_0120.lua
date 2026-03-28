local t = {}
do
  for i=1, 10 do
    t[i] = tostring(i)
    t[i] = tonumber(t[i])
  end
  print(t[5] + t[8])
end