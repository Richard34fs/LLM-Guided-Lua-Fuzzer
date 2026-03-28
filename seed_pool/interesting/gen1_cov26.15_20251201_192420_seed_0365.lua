local function generate_code(str)
  local result = ""
  for i = 1, #str do
    result = result .. string.rep("\\x", i) .. "\n"
  end
  return result
end