function churn_memory()
    local temp_tables = {}
    for i = 1, 100 do
        local t = {}
        setmetatable(t, {__mode = "k"})
        temp_tables[t] = true
        if not pcall(function()
            t = nil
        end) then
            error("Failed to clear table 't'")
        end
        collectgarbage()
    end
end