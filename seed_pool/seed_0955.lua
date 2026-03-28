function call_variadic_function(func, ...)
return func(...)
end
local function recursive_call(depth)
if depth > 0 then
return call_variadic_function(recursive_call, depth - 1)
else
return "Reached the base case"
end
end
print(call_variadic_function(recursive_call, 10))