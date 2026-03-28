function manipulate_string(input)
  local output = ""
  for i = 1, #input do
    if input:sub(i, i) == "a" then
      output = output .. string.rep("b", 2000)
    else
      output = output .. input:sub(i, i)
    end
  end
  return string.gsub(output, "b", "")
end

function manipulate_string_mutated(input)
  local function manipulate_char(c)
    if c == "a" then
      return string.rep("b", 2000)
    else
      return c
    end
  end

  local output = ""
  for i = 1, #input do
    output = output .. manipulate_char(input:sub(i, i))
  end
  return string.gsub(output, "b", "")
end