function create_memory_churn()
    local churn_tables = {}
    for i = 1, 1000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = 'k'})
        churn_tables[i] = temp_table
        temp_table = nil
        collectgarbage()
    end
    churn_tables = nil
    collectgarbage()
    return 1, 2, 3
end