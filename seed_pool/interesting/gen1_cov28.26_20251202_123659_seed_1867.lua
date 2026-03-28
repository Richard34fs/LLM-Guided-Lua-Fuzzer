local function manipulate_string(str)
  local result = ""
  for i = 1, 10 do
    result = result .. string.rep("a", 10000)
  end
  return string.gsub(result, "a", "")
end

-- Create a table with a metatable containing __gc
local t = {}
setmetatable(t, {__gc = function(t)
  print("Table was garbage collected")
end})

-- Simulate userdata by creating a table with a metatable containing __gc and __tostring
local u = {}
setmetatable(u, {__gc = function(u)
  print("Userdata was garbage collected")
end, __tostring = function(u)
  return "Userdata object"
end})
collectgarbage()  -- Force garbage collection