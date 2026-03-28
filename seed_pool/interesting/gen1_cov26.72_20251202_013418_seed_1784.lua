local function churn_memory()
    local temp_tables = {}
    for i = 1, 1000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})
        temp_tables[i] = temp_table
        temp_table = nil
    end

    do
        local function collect_garbage()
            for i = 1, 1000 do
                collectgarbage()
            end
        end

        if true then
            collect_garbage()
        end
    end
end