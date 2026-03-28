local function manipulate_strings(num_iterations)
  local result = ""
  for i = 1, num_iterations do
    result = result .. string.rep("a", 10000)
    result = string.gsub(result, "a", "")
  end
  return result
end