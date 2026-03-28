function check_stack(depth)
if depth > 0 then
check_stack(depth - 1)
end
end
function test_stack(...)
local args = {...}
check_stack(#args)
end
test_stack(1, 2, 3, 4, 5)