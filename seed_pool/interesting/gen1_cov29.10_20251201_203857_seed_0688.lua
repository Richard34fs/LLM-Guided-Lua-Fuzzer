local t = {}
for i = 1, 1000 do
  local key = tostring(i) .. tostring(i % 20)
  t[key] = i
end
return t