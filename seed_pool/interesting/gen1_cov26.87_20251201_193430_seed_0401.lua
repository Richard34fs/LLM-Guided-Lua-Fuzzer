local function massive_string_manipulation(str)
  local result = ""
  local pattern = "."
  local i = 1

  while i < 100 do
    str = string.rep(str, 2)
    str = string.gsub(str, pattern, "")
    result = result .. str
    pattern = pattern .. "."

    i = i + 1
  end

  return result
end