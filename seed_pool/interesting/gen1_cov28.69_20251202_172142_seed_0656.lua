function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})
    local obj  -- Declare the variable before the loop
    for i = 1, 1000 do
        obj = {i}
        temp_table[obj] = true
        if i % 5 == 0 then
            obj = nil
            collectgarbage()
        end
    end
end