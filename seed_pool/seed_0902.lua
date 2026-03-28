function recursive_vararg(...)
if select('#', ...) > 0 then
print(...)
recursive_vararg(select(2, ...))
end
end
recursive_vararg(1, 2, 3, 4, 5)