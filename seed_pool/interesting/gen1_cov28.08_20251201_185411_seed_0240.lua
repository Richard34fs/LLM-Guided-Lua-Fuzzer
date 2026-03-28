function rec_var_func(...)
    if select('#', ...) > 0 then
        rec_var_func(select(2, ...))
    end

    local x = 10
    local y = 20
    local z = 30
    print(x + y + z)
end
rec_var_func(1, 2, 3, 4, 5)