local massive_string_manipulation = load([[
  local modified = ""
  for i = 1, #str do
    if string.find(str, "a", i, true) then
      modified = modified .. string.rep("b", 50)
    else
      modified = modified .. str:sub(i, i)
    end
  end
  return modified
]])