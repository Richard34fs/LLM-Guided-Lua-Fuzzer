function test_stack_limits(...)
local args = {...}
if #args > 0 then
print("Arguments:", unpack(args))
test_stack_limits(unpack(args, 2))
else
print("No arguments")
end
end