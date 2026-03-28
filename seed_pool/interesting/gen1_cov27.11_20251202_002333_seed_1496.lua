local function churn_memory()
    local temp_tables = {}
    for _ = 1, 1000 do
        local temp_table = { __mode = "k" }
        temp_tables[#temp_tables + 1] = temp_table
        local object = { key = "value" }
        temp_table[object] = true
        object = nil
        collectgarbage()
    end
end