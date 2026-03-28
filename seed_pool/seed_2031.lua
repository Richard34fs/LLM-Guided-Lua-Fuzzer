function recursive_vararg(...)
print(...)
if select('#', ...) > 0 then
recursive_vararg(select(2, ...))
end
end
recursive_vararg(1, 2, 3, 4, 5)