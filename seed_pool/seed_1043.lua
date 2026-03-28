function recursive_call(fn, ...)
if ... then
return fn(...)
end
return nil
end
function variadic_func(...)
local args = table.pack(...)
local result = recursive_call(variadic_func, unpack(args))
return result
end