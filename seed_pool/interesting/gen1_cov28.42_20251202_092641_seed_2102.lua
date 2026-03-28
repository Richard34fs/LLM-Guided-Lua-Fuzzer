function churn_memory()
    for i = 1, 1000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = 'kv'})

        local j = 1
        while j <= 1000 do
            local obj = {data = string.rep('x', 100)}
            temp_table[obj] = obj
            obj = nil

            j = j + 1
        end

        collectgarbage()
    end
end