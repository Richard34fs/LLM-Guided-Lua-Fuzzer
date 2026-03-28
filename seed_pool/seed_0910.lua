function check_stack_limit(...)
local args = {...}
if #args > 0 then
print(string.format("Stack limit reached with %d arguments", #args))
else
check_stack_limit(1, 2, 3, 4, 5)
end
end