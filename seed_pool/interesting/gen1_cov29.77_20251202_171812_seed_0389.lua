local t = {}
for i = 1, 1000 do
  local key = tostring(i)
  if i == 1 then
    t[key] = "value"
  else
    t[key] = i * 2
  end
  t[1] = "other value"
end