function manipulate_string(str)
  local string_original = string
  string = nil
  local repeated = string_original.rep(str, 10000)
  local modified = string_original.gsub(repeated, "a", "b")
  local result = ""
  for i = 1, #modified do
    result = result .. string_original.sub(modified, i, i)
  end
  return result
end