local t = {}
t["1"] = 2
t[1] = "3"
for k, v in pairs(t) do
  print(k + v)
end
function mutate(k, v)
  if type(k) == 'number' and type(v) == 'string' then
    return k * 2, v .. v
  else
    return k, v
  end
end
for k, v in pairs(t) do
  print(mutate(k, v))
end