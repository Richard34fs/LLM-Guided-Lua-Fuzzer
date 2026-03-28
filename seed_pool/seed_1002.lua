function variadic_function(...)
local args = {...}
if #args > 0 then
print("Arguments passed: ", unpack(args))
variadic_function(unpack(args))
end
end