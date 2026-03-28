local t = {}
do
  local i = 1
  while i <= 1000 do
    t[i] = i * 2
    t[tostring(i)] = i * 3
    i = i + 1
  end

  for i = 1, 1000 do
    print(t[i], t[tostring(i)])
  end
end