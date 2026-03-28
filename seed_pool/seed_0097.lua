function variadic_test(...)
local args = {...}
if #args > 0 then
variadic_test(unpack(args))
end
end