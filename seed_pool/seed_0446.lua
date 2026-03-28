function variadic_test(...)
local args = {...}
if #args == 0 then
return true
else
return variadic_test(unpack(args))
end
end