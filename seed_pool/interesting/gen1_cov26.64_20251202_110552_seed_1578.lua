function manipulate_strings(n)
  local result = ""
  for i = 1, n do
    result = result .. string.rep("a", i) .. "\n"
  end
  return (function()
    return string.gsub(result, "a", "")
  end)()
end