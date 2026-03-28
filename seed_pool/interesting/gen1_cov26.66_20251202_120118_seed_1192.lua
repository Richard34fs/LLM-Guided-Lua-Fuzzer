function churn_memory()
    local table_count = 200
    for i = 1, table_count do
        local t = setmetatable({}, {__mode = 'kv'})

        local old_insert = table.insert
        table.insert = function(t, v)
            -- your code here
        end
        table.insert(t, "hello")
        old_insert(t, "world")

        t = nil
        collectgarbage()
    end
end