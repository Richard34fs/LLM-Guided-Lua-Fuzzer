function variadic_test(...)
if select("#", ...) < 10 then
variadic_test(...)
end
end
variadic_test(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)