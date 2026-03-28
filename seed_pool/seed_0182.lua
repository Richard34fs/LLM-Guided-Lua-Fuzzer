function check_stack_limit(...)
if select('#', ...) > 0 then
check_stack_limit(...)
end
end