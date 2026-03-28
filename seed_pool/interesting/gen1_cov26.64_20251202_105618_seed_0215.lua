local function churn_memory()
    local temp_tables = {}
    for i = 1, 1000 do
        local t = setmetatable({}, {__mode = "kv"})
        t.i = i -- added field
        temp_tables[i] = t
        temp_tables[i] = nil
        collectgarbage()
    end
    temp_tables = nil
end