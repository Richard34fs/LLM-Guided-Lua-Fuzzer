local t = {}
do
  for i=1,10 do
    t[i] = tostring(i)
  end

  print(t[1] + t[2])

  local sum = 0
  for k,v in pairs(t) do
    sum = sum + tonumber(v)
  end
  print(sum)
end