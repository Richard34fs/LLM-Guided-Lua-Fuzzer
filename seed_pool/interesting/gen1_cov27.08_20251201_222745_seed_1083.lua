function recursive_variadic(...)
    if #arg > 0 then
        recursive_variadic(...)
    end
end
recursive_variadic("\n", "a\nb", "", "\t")
recursive_variadic(1.0, 2e3, -3e-2)
recursive_variadic(true, false)
recursive_variadic(nil, nil)