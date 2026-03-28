function churn_memory()
    for i = 1, 1000 do
        local temp_table, _ = multi_ret(true, {})
        setmetatable(temp_table, {__mode = 'k'})
        local key = {}
        local value = {}
        temp_table[key] = value
        key = nil
        value = nil
        collectgarbage()
    end
end