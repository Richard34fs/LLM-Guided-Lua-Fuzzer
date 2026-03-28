function rec_var(...)
if select("#", ...) > 0 then
print(...)
rec_var(select(2, ...))
end
end
rec_var(1, 2, 3, 4, 5)