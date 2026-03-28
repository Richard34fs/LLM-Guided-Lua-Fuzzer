local function manipulate_string(input)
  local output = ""
  for i = 1, string.len(input) do
    if i % 2 == 0 then
      output = output .. string.rep(" ", i)
    else
      output = output .. string.rep("#", i)
    end
  end
  return string.gsub(output, "#+", "!")
end
local userdata_table = { __gc = function() print("userdata finalized") end }
setmetatable(userdata_table, { __gc = function() print("userdata finalized") end })
userdata_table = nil
collectgarbage()
local string_var = "Hello"
string_var = nil
collectgarbage()