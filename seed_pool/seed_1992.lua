function recurse(...)
if select("#", ...) > 0 then
recurse(select(2, ...))
end
end
recurse(1, 2, 3, 4, 5)