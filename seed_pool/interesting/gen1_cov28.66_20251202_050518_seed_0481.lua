local function churn_memory()
    for i = 1, 1000 do
        local table_with_weak_keys = setmetatable({}, {__mode = "k"})
        local table_with_weak_values = setmetatable({}, {__mode = "v"})
        local temp_table = {}
        table_with_weak_keys[temp_table] = true
        table_with_weak_values[temp_table] = true
        temp_table = nil
        collectgarbage()
    end
end

local function churn_memory()
    for i = 1, 1000 do
        local table_with_weak_keys = setmetatable({}, {__mode = "k"})
        local table_with_weak_values = setmetatable({}, {__mode = "v"})
        local temp_table = {}
        table_with_weak_keys[temp_table] = true
        table_with_weak_values[temp_table] = true
        temp_table = nil
        collectgarbage()
    end
end

churn_memory()