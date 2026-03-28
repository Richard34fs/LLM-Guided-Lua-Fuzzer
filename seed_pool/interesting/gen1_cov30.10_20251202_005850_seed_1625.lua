local t  = {}
for i  = 1, 1000 do
  local key  = tostring(i)
  t[key]  = i
  t[i]  = i
  print(i)  -- Add a line of code within the for loop
  if i % 2 == 0 then
    t[key]  = "even"
  else
    t[key]  = "odd"
  end
end
for i  = 1, 1000 do
  local key  = tostring(i * 10)
  t[key]  = i
  t[i * 10]  = i
end