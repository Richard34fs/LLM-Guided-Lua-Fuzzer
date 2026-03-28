local t = {}
for i = 1, 1000 do
  local key = "key" .. i
  t[key] = i
  t[i] = i
end
setmetatable(t, {
  __index = function(table, key)
    return table.default_value or nil
  end,
  __newindex = function(table, key, value)
    rawset(table, key, value)
  end,
  __add = function(a, b)
    return a.value + b.value
  end,
  __concat = function(a, b)
    return tostring(a) .. tostring(b)
  end,
  __len = function(table)
    return #table
  end,
  __call = function(table, ...)
    return table(...)
  end,
})
local chunk1 = "return 1 + 2"
local chunk2 = "return 'hello' .. 'world'"
local result1 = load(chunk1)()  -- evaluates to 3
local result2 = load(chunk2)()  -- evaluates to 'helloworld'