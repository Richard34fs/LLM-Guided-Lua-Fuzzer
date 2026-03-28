local function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})
        temp_tables[i] = temp_table
    end
    for _, temp_table in pairs(temp_tables) do
        temp_table = nil
        collectgarbage()
    end
end