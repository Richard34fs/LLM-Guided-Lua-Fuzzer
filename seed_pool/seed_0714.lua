function check_stack(num, ...)
if num > 0 then
check_stack(num - 1, ...)
end
end
check_stack(10000)