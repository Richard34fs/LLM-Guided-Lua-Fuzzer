function rec_var_func(...)
if select('#', ...) > 0 then
rec_var_func(select(2, ...))
end
end
rec_var_func(1, 2, 3, 4, 5)