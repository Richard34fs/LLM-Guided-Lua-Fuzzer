local function churn_memory()
    for _ = 1, 100 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})
        temp_table[1] = {}
        temp_table[2] = {}
        temp_table = nil
        collectgarbage()
        return temp_table
    end
end