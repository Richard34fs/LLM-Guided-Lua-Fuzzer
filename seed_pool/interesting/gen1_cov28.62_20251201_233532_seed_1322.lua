function recursive_vararg(...)
    print(...)
    if select("#", ...) < 10 then
        local insert = table.insert
        local ipairs = ipairs
        local print = print

        insert(...)
        for k, v in ipairs(...) do
            print(k, v)
        end
        recursive_vararg(...)
    end
end
recursive_vararg(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)