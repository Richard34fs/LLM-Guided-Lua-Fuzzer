function recursive_variadic_func(...)
local args = {...}
if #args > 0 then
print(args[1])
recursive_variadic_func(unpack(args, 2))
end
end