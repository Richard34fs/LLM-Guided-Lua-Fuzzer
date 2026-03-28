function variadic_function(...)
  local args = {...}
  if #args >= 1 then -- Modified condition to accept at least one argument
    for i, arg in ipairs(args) do
      print(arg)
      variadic_function(arg)
    end
  else
    print("No arguments")
  end
end