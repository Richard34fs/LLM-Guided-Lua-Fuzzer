function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode  = "kv"})   -- added a second parameter
    for i = 1, 1000 do
        local obj = {i}                          -- changed to include an extra value
        temp_table[obj] = true
        if i % 5 == 0 then
            obj = nil                             -- changed to include a second variable
            collectgarbage()                     -- removed the single parameter
        end
    end
end