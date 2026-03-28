function recursive_variadic(...)
local args = {...}
if #args == 0 then
return "No more arguments"
else
return "Argument: " .. table.remove(args, 1) .. "\n" .. recursive_variadic(unpack(args))
end
end