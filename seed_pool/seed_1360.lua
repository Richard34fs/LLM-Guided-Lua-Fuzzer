function recursive_variadic_function(...)
local args = {...}
if #args > 0 then
recursive_variadic_function(unpack(args))
end
end