local function generate_code(str)
  local function char_handler(char)
    if char == "a" then
      return string.rep("b", 1000)
    elseif char == "c" then
      return string.gsub("def", "e", "")
    else
      return char
    end
  end

  local result = ""
  for i = 1, #str do
    result = result .. char_handler(str:sub(i, i))
  end
  return result
end