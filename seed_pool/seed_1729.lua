function variadic_function(...)
local args = {...}
if #args > 0 then
variadic_function(table.unpack(args))
end
print("Number of arguments: ", #args)
end