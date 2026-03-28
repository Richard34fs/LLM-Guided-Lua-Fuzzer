function variadic_func(...)
local args = {...}
if #args > 0 then
print("Number of arguments:", #args)
variadic_func(table.unpack(args))
else
print("No more arguments.")
end
end