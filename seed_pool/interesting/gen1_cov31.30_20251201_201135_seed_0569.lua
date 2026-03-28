local function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local tmp = { key = "value" }
        setmetatable(tmp, { __mode = 'k' })
        temp_tables[i] = tmp
        tmp = nil
    end
    collectgarbage()
end
for _ = 1, 10 do
    churn_memory()
end

-- Mutated code: insert deliberate error calls within pcall/xpcall blocks
local function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local tmp = { key = "value" }
        setmetatable(tmp, { __mode = 'k' })
        temp_tables[i] = tmp
        tmp = nil
    end
    collectgarbage()
end
for _ = 1, 10 do
    local status, err = pcall(churn_memory)
    if not status then
        error("Error occurred: " .. tostring(err))
    end
end