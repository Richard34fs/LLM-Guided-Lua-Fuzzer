function recursive_varargs(...)
print(...)
if select("#", ...) > 0 then
recursive_varargs(select(2, ...))
end
end
recursive_varargs(1, 2, 3, 4, 5)