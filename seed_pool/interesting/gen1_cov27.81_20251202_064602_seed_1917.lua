local function manipulate_string(s)
  local result = ""
  for i = 1, #s do
    if i % 2 == 0 then
      result = result .. string.rep(string.gsub(s, ".", "%1"), i)
    else
      result = result .. string.rep(string.gsub(s, ".", ""), i)
    end
  end
  return result
end