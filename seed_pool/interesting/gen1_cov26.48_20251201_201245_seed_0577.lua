function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})

    for _ = 1, 1000 do
        temp_table[_] = {}
    end
    
    temp_table = nil
    collectgarbage()
end