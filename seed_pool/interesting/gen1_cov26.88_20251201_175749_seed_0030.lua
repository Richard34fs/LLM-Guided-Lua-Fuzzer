function churn_memory()
    local weak_table = setmetatable({}, {__mode = 'kv'})

    for i = 1, math.huge do
        local tmp_table = {}
        weak_table[tmp_table] = true
        tmp_table = nil
        collectgarbage()
    end
end