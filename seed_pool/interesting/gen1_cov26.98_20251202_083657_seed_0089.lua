local function manipulate_string(s)
  local new_s = ""
  local count = 0
  while count < 100 do
    new_s = new_s .. string.rep("a", string.len(s))
    s = string.gsub(s, "b", "")
    count = count + 1
  end
  return new_s
end