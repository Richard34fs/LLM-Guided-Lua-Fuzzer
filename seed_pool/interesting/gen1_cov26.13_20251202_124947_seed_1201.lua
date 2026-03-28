local function manipulate_string(str)
  local result = ""
  local pattern = "pattern"
  local replacement = "replacement"
  for i = 1, 100 do
    str = string.rep(str, i)
  end
  for i = 1, 100 do
    str = string.gsub(str, pattern, replacement)
  end
  for i = 1, 100 do
    result = result | str
  end
  return result
end