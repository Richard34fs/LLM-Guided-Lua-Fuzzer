function test_stack_limit(...)
if select('#', ...) > 0 then
test_stack_limit(select(2, ...))
else
print("Stack limit reached")
end
end
test_stack_limit(1, 2, 3, 4, 5)