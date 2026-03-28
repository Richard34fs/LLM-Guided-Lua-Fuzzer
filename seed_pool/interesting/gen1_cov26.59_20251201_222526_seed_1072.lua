function churn_memory()
    local temp_table -- new declaration moved here
    for _ = 1, 100 do
        temp_table = {}
        setmetatable(temp_table, {__mode = "kv"})
        temp_table[1] = 1
        temp_table = nil
        collectgarbage()
    end
end