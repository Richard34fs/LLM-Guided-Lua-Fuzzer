function recursive_variadic(...)
if select('#', ...) > 0 then
print(...)
recursive_variadic(select(2, ...))
end
end
recursive_variadic(1, 2, 3, 4, 5)