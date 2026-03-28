function check_stack_limit(...)
if select("#", ...) > 0 then
print("Stack limit reached!")
else
check_stack_limit(...)
end
end
check_stack_limit(1, 2, 3, 4, 5)