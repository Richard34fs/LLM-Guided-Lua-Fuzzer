local function generate_code(str)
  local function char_handler(char)
    if char == "a" then
      return string.rep("b", 1000)
    elseif char == "c" then
      return string.gsub("def", "e", "")
    else
      return char
    end
  end

  local result = ""
  for i = 1, #str do
    result = result .. char_handler(str:sub(i, i))
  end
  return result
end
function generate_mutated_code()
  -- Create a new table with metatable containing __gc (garbage collection)
  local mutated_table = {}
  setmetatable(mutated_table, {
    __gc = function(t)
      print("Garbage collection or finalization occurred!")
    end
  })

  -- Use the original generate_code function to mutate the table
  generate_code(mutated_table)

  return mutated_table
end
-- Invoke the generate_mutated_code function instead of generate_code
local mutated_table = generate_mutated_code()

-- Continue with your testing code using the mutated table
print(mutated_table)