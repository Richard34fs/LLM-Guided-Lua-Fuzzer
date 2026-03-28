local function generate_code(str)
  local repeated = string.rep(str, 10000)
  local replaced = string.gsub(repeated, "a", "")
  local result = ""
  for i = 1, #replaced do
    result = result .. string.sub(replaced, i, i)
  end
  return result
end
local function generate_code(str)
  local repeated = string.rep(str, 10000)
  local replaced = string.gsub(repeated, "a", "")
  local result = ""
  for i = 1, #replaced do
    result = result .. string.sub(replaced, i, i)
  end
  return result
end
generate_code("a")