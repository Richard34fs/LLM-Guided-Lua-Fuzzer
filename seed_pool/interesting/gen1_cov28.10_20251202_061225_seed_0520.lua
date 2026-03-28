local function manipulate_string(s)
  local result = ""
  for i = 1, #s do
    local char = s:sub(i, i)
    if i % 2 == 0 then
      result = result .. string.rep(char, 3)
    else
      result = result .. string.gsub(char, ".", "*")
    end
  end
  return result
end