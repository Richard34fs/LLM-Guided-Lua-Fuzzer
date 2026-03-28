function generate_code(str)
  local result = ""
  for i in ipairs({1, 2, 3}) do
    result = result .. string.rep(string.gsub(str, ".", "a"), i)
  end
  return result
end