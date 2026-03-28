function create_memory_churn(count)
    for i = 1, count do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})

        -- Shadow built-in functions by creating local versions (closures)
        local table_insert = table.insert
        local ipairs = ipairs
        local print = print

        -- Invoke both the global version and the local version of each function
        table_insert(temp_table, 1, "Hello")
        table.insert(temp_table, 2, "World")
        print(temp_table[1])
        print(temp_table[2])

        temp_table = nil
        collectgarbage()
    end
end