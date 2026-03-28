function create_memory_churn()
    local temp_tables = {}
    for i = 1, 100 do
        local table_with_weak_keys = setmetatable({}, {__mode = "k"})
        local table_with_weak_values = setmetatable({}, {__mode = "v"})
        temp_tables[table_with_weak_keys] = true
        temp_tables[table_with_weak_values] = false
        table_with_weak_keys = nil
        table_with_weak_values = nil
    end
    collectgarbage()
end