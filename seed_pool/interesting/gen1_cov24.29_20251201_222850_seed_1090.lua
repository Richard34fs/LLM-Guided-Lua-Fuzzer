function recursive_variadic_function(...)
  if ... then
    print(...)
    return recursive_variadic_function(...)  -- Return multiple values in a single expression
  end
end