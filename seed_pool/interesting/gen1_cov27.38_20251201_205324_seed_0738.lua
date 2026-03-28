local function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, {__mode  = "kv"})
    for i = 1, 10000 do
        temp_table[i] = {}
        temp_table[i][1] = i .. " bitwise" ~ 32768 // 5
        collectgarbage()
    end
end