function churn_memory()
    local i = 1
    while i <= 10000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})
        temp_table[i] = i
        temp_table[i] = nil
        collectgarbage()
        i = i + 1
    end
end