local function churn_memory()
    for _ = 1, 1000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "kv"})
        temp_table[1] = 1
        temp_table[2] = 2
        temp_table = nil
        collectgarbage()
    end
end

local function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})
    for _ = 1, 1000 do
        temp_table[1] = 1
        temp_table[2] = 2
        collectgarbage()
    end
end

local function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})
    for _ = 1, 1000 do
        local closure = function()
            temp_table[1] = 1
            temp_table[2] = 2
        end
        closure()
        collectgarbage()
    end
end