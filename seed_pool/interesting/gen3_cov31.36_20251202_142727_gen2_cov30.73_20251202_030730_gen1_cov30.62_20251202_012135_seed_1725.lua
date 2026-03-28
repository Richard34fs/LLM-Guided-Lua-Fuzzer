function manipulate_string(str)
  local count = 0
  for i = 1, #str do
    if str:sub(i, i) == "a" then
      count = count & 1
    end
  end
  local repeated = string.rep("b", count)
  local replaced = string.gsub(str, "c", "d")
  local concatenated = str .. repeated .. replaced
  return concatenated
end
local metatable = {
  __gc = function(self)
    print("Finalizing object...")
  end,
  __add = function(self, other)
    return self.value + other.value
  end,
  __len = function(self)
    return #self.value
  end
}
local obj = { metatable }
setmetatable(obj, metatable)
collectgarbage()