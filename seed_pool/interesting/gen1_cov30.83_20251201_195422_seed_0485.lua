local my_string = {}
for func_name, func in pairs(string) do
  my_string[func_name] = function(...)
    return func(...)
  end
end
local function manipulate_string(input)
  local output = ""
  for i = 1, #input do
    local char = my_string.sub(input, i, i)
    if char == "a" then
      output = output .. my_string.rep("b", 500)
    elseif char == "b" then
      output = output .. my_string.rep("c", 300)
    else
      output = output .. char
    end
  end
  return output
end