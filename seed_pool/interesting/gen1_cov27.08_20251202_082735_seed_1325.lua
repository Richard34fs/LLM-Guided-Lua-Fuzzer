local function create_memory_churn()
    local temp_tables = {}
    for i = 1, 1000 do
        local table_with_weak_keys = { __mode = "k" }
        setmetatable(temp_tables, table_with_weak_keys)
        temp_tables[i] = { key = i, value = i * 10 }
        temp_tables[i] = nil
    end
    for _ = 1, 10 do
        collectgarbage()
    end
end
local function create_memory_churn()
    local temp_tables = {}
    for i = 1, 1000 do
        local table_with_weak_keys = { __mode = "k" }
        setmetatable(temp_tables, table_with_weak_keys)
        local table_with_weak_values = { __mode = "v" }
        temp_tables[i] = { key = i, value = i * 10 }
        temp_tables[i] = nil
    end
    for _ = 1, 10 do
        collectgarbage()
    end
end
local function create_memory_churn()
    local temp_tables = {}
    for i = 1, 1000 do
        local table_with_weak_keys = { __mode = "k" }
        setmetatable(temp_tables, table_with_weak_keys)
        temp_tables[i] = { key = i, value = i * 10 }
        temp_tables[i] = nil
    end
    for _ = 1, 10 do
        collectgarbage()
    end
end