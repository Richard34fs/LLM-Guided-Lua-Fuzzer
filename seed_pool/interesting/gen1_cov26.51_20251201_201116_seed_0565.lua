function churn_memory()
    local tmp_table  -- Declare tmp_table before the loop
    for _ = 1, 100 do
        tmp_table = {}
        setmetatable(tmp_table, {__mode = "k"})
        for i = 1, 1000 do
            tmp_table[i] = {}
        end
        tmp_table = nil
        collectgarbage()
    end
end