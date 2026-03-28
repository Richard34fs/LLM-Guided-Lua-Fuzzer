function variadic(...)
print(...)
if select("#", ...) > 0 then
variadic(select(2, ...))
end
end
variadic(1, 2, 3, 4, 5)