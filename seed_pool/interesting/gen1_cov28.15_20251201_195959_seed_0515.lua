function manipulate_string(input)
  local result = ""
  local count = 0
  for i = 1, #input do
    if input:sub(i, i) == "a" then
      count = count + 1
    else
      result = result .. string.rep("b", count)
      count = 0
    end
  end
  result = result .. string.rep("b", count)
  return result
end