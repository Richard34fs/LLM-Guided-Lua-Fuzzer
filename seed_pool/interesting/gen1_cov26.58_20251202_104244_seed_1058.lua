local function churn_memory()
    local temp_tables = {}
    for i = 1, 1000 do
        local t = setmetatable({}, {__mode = 'kv'})
        for j = 1, 1000 do
            t[j] = math.random()
        end
        temp_tables[i] = t
        return nil
    end
    collectgarbage()
end