function recursive_variadic_function(...)
print(...)
if select('#', ...) > 0 then
recursive_variadic_function(select(2, ...))
end
end
recursive_variadic_function(1, 2, 3, 4, 5)