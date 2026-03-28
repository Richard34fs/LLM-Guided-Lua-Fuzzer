local function manipulate_strings(s)
  local new_str = ""
  local count = 0
  while count < 10 do
    new_str, count = string.gsub(new_str .. string.rep(s, count), "a", "b") -- Mutated line
    count = count + 1
  end
  return new_str
end