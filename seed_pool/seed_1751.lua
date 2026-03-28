function check_stack_limit(...)
local args = {...}
if #args > 0 then
print("Stack limit not reached")
check_stack_limit(unpack(args))
else
print("Stack limit reached")
end
end