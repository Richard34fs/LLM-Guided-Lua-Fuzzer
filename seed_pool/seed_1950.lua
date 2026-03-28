function variadic_function(...)
local args = {...}
if #args > 0 then
print(table.unpack(args))
variadic_function(table.unpack(args))
end
end