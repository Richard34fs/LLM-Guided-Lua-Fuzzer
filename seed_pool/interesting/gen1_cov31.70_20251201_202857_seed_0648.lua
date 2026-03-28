local t = {}
for i = 1, 1000 do
  t[i] = "value" .. i
  t["key" .. i] = i
end
setmetatable(t, {__gc = function(self)
  print("GC triggered!")
  for k, v in pairs(self) do
    print(k, v)
  end
end})
for k, v in pairs(t) do
  print(k, v)
end
collectgarbage()  -- Force garbage collection