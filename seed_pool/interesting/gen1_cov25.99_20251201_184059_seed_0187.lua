local function massive_string_manipulation(s)
  local result = ""
  for i = 1, 100 do
    s = table.unpack(string.rep(s, 2))   -- Modified line
    s = string.gsub(s, "abc", "")
    result = result .. s
  end
  return result
end