local function manipulate_string(input)
  local result = ""
  for i = 1, #input do
    local char = string.sub(input, i, i)
    if char == "a" then
      return string.rep("b", 5) -- Change: Return a value instead of concatenating it to `result`
    elseif char == "b" then
      result = result .. string.rep("c", 3)
    else
      result = result .. char
    end
  end
  return result
end