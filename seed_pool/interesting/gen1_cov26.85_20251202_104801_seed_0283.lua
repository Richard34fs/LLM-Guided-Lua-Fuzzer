function churn_memory()
    for _ = 1, 100 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})

        pcall(function()
            -- Error injection using error()
            error(" deliberate error")

            -- OR

            -- Error injection using assert(false)
            assert(false, "deliberate error")

            -- OR

            -- Error injection using invalid table indexing
            temp_table[nil] = {}
        end)

        temp_table = nil
        collectgarbage()
    end
end