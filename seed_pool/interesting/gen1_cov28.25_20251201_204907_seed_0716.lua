local function generate_massive_strings(pattern, count)
  local result = ""
  for i = 1, count do
    result = result .. string.rep(pattern, i) .. "\n"
  end
  return result
end

-- Create a table with a __gc metamethod that simulates userdata
local t = {}
setmetatable(t, {__gc = function() print("Collecting garbage") end})

-- Force garbage collection
collectgarbage()