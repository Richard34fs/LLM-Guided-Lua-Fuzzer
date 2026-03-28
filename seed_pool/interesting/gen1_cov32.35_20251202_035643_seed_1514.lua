local t = {}
setmetatable(t, {
  __index = function(table, key)
    if type(key) == 'number' and key % 3 == 0 then
      return key * 2
    end
  end
})
function t.computeValue(key)
  if type(key) == 'string' then
    return tonumber(key) * 2
  end
end
t.nestedTable = { a = 1, b = 2 }
t.array = { 'a', 'b', 'c' }
for i = 1, 1000 do
  local key = tostring(i)
  if i % 3 == 0 then
    key = i
  end
  t[key] = i * 2
end