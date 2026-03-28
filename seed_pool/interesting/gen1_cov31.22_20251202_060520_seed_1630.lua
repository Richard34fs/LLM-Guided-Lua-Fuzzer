t = setmetatable({}, {
  __index = function(table, key)
    if type(key) == "number" then
      return "value" .. key
    else
      return rawget(table, key)
    end
  end
})
for i = 1, 1000 do
  t[i] = "value" .. i
end
for i = 999, 1, -1 do
  t["key" .. i] = "value" .. i
end