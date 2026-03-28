function variadic_function(...)
  local args = {...}
  if #args > 0 then
    print(table.concat(args, ", "))
    variadic_function(select(2, ...))
  end
end

-- Mutated code with more arguments passed to the function
function variadic_function(...)
  local args = {...}
  if #args >= 1 then -- Modified condition to accept at least one argument
    print(table.concat(args, ", "))
    variadic_function(select(2, ...))
  end
end

-- Mutated code with fewer arguments passed to the function
function variadic_function(...)
  local args = {...}
  if #args > 0 then -- Modified condition to accept at least one argument
    print(table.concat(args, ", "))
  else
    print("No arguments")
  end
end