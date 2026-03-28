function variadic_test(...)
local args = {...}
if #args > 0 then
return variadic_test(unpack(args))
else
return "Stack limit reached"
end
end