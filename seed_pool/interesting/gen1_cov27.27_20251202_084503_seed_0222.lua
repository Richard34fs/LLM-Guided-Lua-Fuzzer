function string_manipulation(str)
  local repeated = string.rep(function() return str end, 10^6)
  local modified = ""
  local function modify_string(s)
    modified = string.gsub(s, "pattern", "replacement")
  end
  modify_string(repeated)
  local result = ""
  for i = 1, 10^5 do
    result = result .. modified
  end
  return result
end