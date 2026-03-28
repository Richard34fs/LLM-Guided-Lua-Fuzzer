function recursive_variadic(...)
print(...)
if select('#', ...) > 0 then
recursive_variadic(...)
end
end