function generate_code(pattern, times)
  local result = ""
  for i = 1, times do
    result = result .. string.rep(" ", i) .. string.gsub(pattern, "%s", "") .. "\n"
  end
  return result
end
print(generate_code("This is a test pattern.", 5))