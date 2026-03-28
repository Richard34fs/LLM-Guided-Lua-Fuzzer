local function generate_code(str)
  local pattern = string.rep(".", #str)
  local replacement = ""
  for i = 1, #str do
    replacement = replacement .. str:sub(i, i) .. "\n"
  end
  return string.gsub(pattern, ".", replacement)
end
local function generate_code2(str)
  return string.gsub(string.rep(".", #str), ".", str .. "\n")
end
print(generate_code("abc"))
print(generate_code2("abc"))