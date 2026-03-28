function manipulate_string(s)
  local result = ""
  for i = 1, #s do
    if i % 2 == 0 then
      error("Error injection")
    end
    result = result .. string.rep(string.sub(s, i, i), 3)
  end
  return result
end