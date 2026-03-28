function recursive_varargs(...)
if select('#', ...) > 0 then
print(select(1, ...))
recursive_varargs(select(2, ...))
end
end
recursive_varargs(1, 2, 3, 4, 5)