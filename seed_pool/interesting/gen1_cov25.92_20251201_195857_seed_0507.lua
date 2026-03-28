local function generate_massive_strings(num_iterations)
  local result = ""
  do
    for i = 1, num_iterations do
      result = result .. string.rep("a", 100000)
    end
  end
  return result
end