local function churn_memory()
    local temp_tables = {}
    for i = 1, 1000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})
        temp_tables[i] = temp_table
        temp_table = nil
    end
    for i = 1, 100 do
        collectgarbage()
    end
end

local function shadow_builtin()
    local table_insert = table.insert
    local ipairs = ipairs
    local print = print

    -- Shadow built-in functions with local versions (closures)
    local function churn_memory()
        local temp_tables = {}
        for i = 1, 1000 do
            local temp_table = {}
            setmetatable(temp_table, {__mode = "k"})
            temp_tables[i] = temp_table
            temp_table = nil
        end
        for i = 1, 100 do
            collectgarbage()
        end
    end

    -- Invoke both the global and local versions of built-in functions
    table_insert(temp_tables, "test")
    table.insert(temp_tables, "test2")
    print("Global version:", temp_tables[1])
    print("Local version:", temp_tables[2])
end