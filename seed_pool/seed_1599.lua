function test_stack_limit(...)
local args = {...}
if #args > 0 then
print("Arguments left to process:", #args)
test_stack_limit(unpack(args))
else
print("Stack limit reached!")
end
end