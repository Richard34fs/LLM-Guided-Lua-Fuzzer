function variadic_function(...)
  local args = {...}

  if #args > 0 then
    error("Error: Variadic function called with arguments")
  end
end