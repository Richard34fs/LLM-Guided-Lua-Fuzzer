function recursive_func(...)
if select('#', ...) > 0 then
print(...)
recursive_func(select(2, ...))
end
end