function variadic_function(...)
local args = {...}
if #args > 0 then
variadic_function(unpack(args))
end
end