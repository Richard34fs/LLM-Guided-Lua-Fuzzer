function churn_memory()
    for _ in ipairs({}) do
        local temp_table = {}
        setmetatable(temp_table, {
            __newindex = function(table, key, value)
                print("New field assigned to temp_table:", key, value)
                rawset(table, key, value)  -- Add the new field to the table
            end
        })
        for i = 1, 1000 do
            temp_table[i] = {a = i, b = i * 2}
        end
        temp_table = nil
        collectgarbage()
    end
end