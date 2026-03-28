function variadic_func(...)
local args = {...}
if #args > 0 then
print("Argument passed: ", args[1])
table.remove(args, 1)
variadic_func(unpack(args))
end
end