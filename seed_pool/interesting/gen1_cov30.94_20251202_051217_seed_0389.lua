local t = {}
setmetatable(t, {
  __index = function(table, key)
    print("Attempting to access missing field: " .. tostring(key))
  end,
  __newindex = function(table, key, value)
    print("Attempting to assign to non-existent field: " .. tostring(key))
  end
})
for i = 1, 1000 do
  local key = tostring(i)
  t[key] = i * 2
end
t["1"] = "value"
t[1] = "other value"