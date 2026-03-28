function generate_code(str)
  local repeated = string.rep(str, 20000)    -- repeated string
  local replaced = string.gsub(repeated, "x", "y")   -- replaced string

  local result = ""
  for i = 1, #replaced do
    result = result .. string.sub(replaced, i, i)
  end
  return result
end