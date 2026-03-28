local function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode  = 'k'})

    while true do
        for i = 1, 10000 do
            temp_table[i]  = i
        end

        temp_table       = nil
        collectgarbage()
    end
end