function recursive_variadic(...)
print(...)
if select('#', ...) < 10 then
recursive_variadic(...)
end
end
recursive_variadic(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)