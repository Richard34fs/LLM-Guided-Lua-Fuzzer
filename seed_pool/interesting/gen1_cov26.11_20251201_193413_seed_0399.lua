local function churn_memory()
    for i = 1, 1000 do
        local temp_table = {a = {}, b = {}, c = {}}  -- Complex table with multiple fields
        setmetatable(temp_table, {__mode = "k"})    -- Metatable with __mode field
        temp_table[{}] = {}                         -- Nested table within the original table
        collectgarbage()
    end
end