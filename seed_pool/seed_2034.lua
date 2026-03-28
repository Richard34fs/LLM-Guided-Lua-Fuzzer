function recursive_variadic_func(...)
local args = {...}
if #args == 0 then
return
end
print(args[1])
recursive_variadic_func(unpack(args, 2))
end