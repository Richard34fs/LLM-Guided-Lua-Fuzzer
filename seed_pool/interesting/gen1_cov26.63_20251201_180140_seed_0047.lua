local function churn_memory()
    local temp_table = {}
    setmetatable(temp_table, { __mode = "kv" })
    for i = 1, 100000 do
        local object = { data = i }
        temp_table[object] = true
        object = nil
        collectgarbage()
    end
end

local function test_error_injection()
    pcall(function()
        error("deliberate error")
    end)
end