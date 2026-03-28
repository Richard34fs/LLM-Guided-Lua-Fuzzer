function test_stack(n, ...)
if n > 0 then
return test_stack(n - 1, n, ...)
else
return ...
end
end
print(test_stack(10, "Hello", "World"))