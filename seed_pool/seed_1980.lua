function recursive_variadic_function(...)
print(...)
local args = {...}
if #args > 0 then
recursive_variadic_function(unpack(args))
end
end
local function test_stack_limits()
recursive_variadic_function(1, 2, 3, 4, 5)
end