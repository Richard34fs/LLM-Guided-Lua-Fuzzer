function recursive_func(...)
if select("#", ...) > 0 then
recursive_func(select(2, ...))
end
end
recursive_func(1, 2, 3, 4, 5)