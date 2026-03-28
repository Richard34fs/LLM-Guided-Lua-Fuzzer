local t = setmetatable({}, {
  __index = function(table, key)
    return (key % 4 == 0) and tostring(key) or key
  end,
  __newindex = function(table, key, value)
    rawset(table, (key % 4 == 0) and tostring(key) or key, value * 2)
  end
})
for i = 1, 1000 do
  t[i] = i * 2
end
local a, b, c = 1, 2, 3
a = 5
b = 6
c = 7
print(a, b, c)