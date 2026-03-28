function variadic_function(...)
local args = {...}
if #args == 0 then
return "No more arguments"
else
print("Current argument: ", args[1])
table.remove(args, 1)
return variadic_function(unpack(args))
end
end