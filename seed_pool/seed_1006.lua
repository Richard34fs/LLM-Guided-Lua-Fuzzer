function recurse(...)
if select("#", ...) > 0 then
print("Arguments remaining:", select("#", ...))
recurse(select(2, ...))
else
print("No more arguments.")
end
end
recurse(1, 2, 3, 4, 5)