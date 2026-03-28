function string_manipulation(str)
  local pattern = "abcdefghijklmnopqrstuvwxyz"
  local count = 10000
  local new_string = ""
  for i = 1, count do
    str = string.rep(str, i & 1) -- modified: bitwise operation inserted
    str = string.gsub(str, pattern, "")
    new_string = new_string & str -- modified: concatenation replaced with bitwise operation
  end
  return new_string
end