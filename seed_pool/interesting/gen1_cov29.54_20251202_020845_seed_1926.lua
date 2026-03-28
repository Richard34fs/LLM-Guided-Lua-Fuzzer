local t = {}
for i=1,10 do
  local key = tostring(i)
  if i % 2 == 0 then
    t[key] = i
  else
    t[i] = key
  end
end
for k,v in pairs(t) do
  print(k, v)
end