function manipulate_strings(num_iterations)
  local result = {}

  for i = 1, num_iterations do
    local nested_table = {
      str = string.rep("x", 2^i),
      nested_table = {
        str = "nested"
      }
    }

    table.insert(result, nested_table)
  end

  return result
end