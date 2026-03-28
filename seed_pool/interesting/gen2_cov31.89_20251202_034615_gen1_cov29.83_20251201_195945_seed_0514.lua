local t = setmetatable({x = 20}, {__index = function(table, key)
  if type(key) == "number" then
    return table[tostring(key)]
  else
    return rawget(table, key)
  end
end})
for i = 1, 10 do
  local key = tostring(i)
  t[key] = t[key] or 0
  t[key] = t[key] + i
end
pcall(function()
  print(t["error"])
end)