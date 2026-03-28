local function manipulate_string(s)
  local result = ""
  for i = 1, #s do
    result = result .. string.rep(s:sub(i, i), 2)
  end
  return result
end

local function double_string(s)
  local result = ""
  for i = 1, #s do
    result = result .. s:sub(i, i)
  end
  return result
end