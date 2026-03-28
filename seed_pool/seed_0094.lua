function variadic_func(...)
local args = {...}
if #args > 10 then
print("Stack limit exceeded!")
return
end
variadic_func(unpack(args))
end