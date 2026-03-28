local function manipulate_strings(n)
  local result = ""
  for i = 1, n do
    result = result .. string.rep("a", i) .. string.rep("b", i)
  end
  return string.gsub(result, "ab", "")
end

-- Mutated code using METATABLE_MUTATION
local mt = {
  __index = function()
    return 0
  end,
  __newindex = function(table, key, value)
    if type(value) == "number" then
      rawset(table, key, value + 1)
    else
      rawset(table, key, value)
    end
  end
}
local table = setmetatable({}, mt)

-- Test the metamethods
assert(table.x == 0) -- __index
table.y = "foo"
assert(table.y == "foo") -- __newindex with non-numeric value
table.z = 5
assert(table.z == 6) -- __newindex with numeric value