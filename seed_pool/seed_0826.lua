function variadic_test(...)
local args = {...}
if #args > 0 then
return variadic_test(unpack(args))
else
return "Argument Stack Limit Reached"
end
end