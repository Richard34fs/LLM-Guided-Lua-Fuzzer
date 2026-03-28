local t = {}
setmetatable(t, {
  __index = function(table, key)
    return key * 2
  end,
  __newindex = function(table, key, value)
    rawset(table, key, value * 3)
  end
})
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i * 2
end
for i = 1, 1000 do
  local key = i + 1000
  t[key] = i * 3
end