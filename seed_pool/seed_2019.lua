function variadic_test(...)
if select("#", ...) > 0 then
variadic_test(select(2, ...))
end
end
variadic_test(1, 2, 3, 4, 5)