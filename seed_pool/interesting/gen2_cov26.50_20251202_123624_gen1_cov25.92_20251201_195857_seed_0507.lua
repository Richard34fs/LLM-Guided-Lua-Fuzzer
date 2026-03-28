function generate_massive_strings(num_iterations)
  local function generate_string()
    return string.rep("a", 100000)
  end

  local result = ""
  for i = 1, num_iterations do
    result = result .. generate_string()
  end
  return result
end