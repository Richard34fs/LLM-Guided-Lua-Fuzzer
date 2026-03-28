function recurse(...)
if select("#", ...) > 0 then
print(select(1, ...))
recurse(select(2, ...))
end
end
recurse(1, 2, 3, 4, 5)