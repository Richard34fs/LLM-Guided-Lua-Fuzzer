local function recursive_call(f, ...)
  f(...)
  recursive_call(f, ...)
end
local variadic_function = function(...)
  recursive_call(variadic_function, ...)
end