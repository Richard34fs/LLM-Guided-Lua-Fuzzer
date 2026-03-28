function churn_memory()
    local function create_temp_table()
        local temp_table = {}
        setmetatable(temp_table, { __mode = 'kv' })
        return temp_table
    end
    local temp_tables = {
        {
            table.insert(create_temp_table(), 1),
        },
    }
    for _, temp_table in ipairs(temp_tables) do
        temp_table = nil
    end
    collectgarbage()
end