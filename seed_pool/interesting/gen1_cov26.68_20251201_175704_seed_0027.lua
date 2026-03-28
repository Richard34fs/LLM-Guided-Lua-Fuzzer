local function churn_memory()
    local temp_tables = {}
    for i = 1, 100000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "k"})
        temp_tables[i] = temp_table
        temp_table.key = i
        temp_table = nil
        collectgarbage()
    end
end
local function dynamic_chunk_load()
    local chunk = "local x = 10 print(x)"
    loadstring(chunk)() -- or load(chunk)
end