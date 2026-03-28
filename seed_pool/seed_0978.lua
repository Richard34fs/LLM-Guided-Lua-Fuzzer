function variadic_func(...)
local args = {...}
if #args > 0 then
print(table.concat(args, " "))
variadic_func(unpack(args))
end
end