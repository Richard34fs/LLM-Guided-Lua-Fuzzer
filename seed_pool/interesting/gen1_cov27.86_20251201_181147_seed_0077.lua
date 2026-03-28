local function manipulate_string(input)
  local result = ""
  local i = 1
  while i <= #input do
    if input:sub(i, i) == "a" then
      result = result .. string.rep("b", 200)
    else
      result = result .. input:sub(i, i)
    end

    i = i + 1
  end

  return string.gsub(result, "b", "c")
end