function variadic_test(...)
local args = {...}
if #args > 0 then
print(table.concat(args, " "))
variadic_test(unpack(args))
end
end