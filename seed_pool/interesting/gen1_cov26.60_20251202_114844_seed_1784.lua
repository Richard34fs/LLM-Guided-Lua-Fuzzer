local function churn_memory()
    local temp_tables = {}
    for i in pairs(temp_tables) do
        local temp_table = {}
        setmetatable(temp_table, {__mode  = "k"})
        temp_tables[i] = temp_table
        temp_table = nil
    end
    while true do
        collectgarbage()
    end
end