function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local t = {}
        setmetatable(t, {__mode = 'k'})
        temp_tables[t] = true
        t = nil
        collectgarbage()
    end
    temp_tables = nil
    collectgarbage()
end
do
    function churn_memory()
        local temp_tables = {}
        for i = 1, 100 do
            local t = {}
            setmetatable(t, {__mode = 'k'})
            temp_tables[t] = true
            t = nil
            collectgarbage()
        end
        temp_tables = nil
        collectgarbage()
    end
end