function variadic_function(...)
local args = {...}
if #args > 0 then
print(table.concat(args, ", "))
variadic_function(select(2, ...))
end
end