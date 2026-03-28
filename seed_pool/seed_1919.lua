function variadic_function(...)
local args = {...}
if #args > 0 then
print("Argument: ", args[1])
table.remove(args, 1)
variadic_function(unpack(args))
end
end