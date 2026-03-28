function variadic_func(...)
local args = {...}
if #args > 0 then
variadic_func(unpack(args))
else
return "Stack limit reached"
end
end