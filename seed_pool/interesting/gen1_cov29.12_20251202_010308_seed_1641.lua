local function churn_memory()
    for _ = 1, 1000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = 'kv'})
        for i = 1, 1000 do
            temp_table[i] = {}
        end

        -- Nested do...end blocks
        do
            do
                local a = 1
                local b = 2
                local c = 3
            end

            do
                local x = 4
                local y = 5
                local z = 6
            end
        end

        temp_table = nil
        collectgarbage()
    end
end
churn_memory()