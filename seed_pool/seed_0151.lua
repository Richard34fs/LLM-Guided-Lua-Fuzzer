function variadic_function(...)
local args = {...}
if #args == 0 then
return "Stack limit reached"
else
print(table.concat(args, ", "))
return variadic_function(unpack(args))
end
end