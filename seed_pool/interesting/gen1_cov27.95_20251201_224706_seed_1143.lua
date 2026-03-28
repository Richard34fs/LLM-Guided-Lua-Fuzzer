function churn_memory()
    for i = 1, 10000 do
        local temp_table = {}
        setmetatable(temp_table, {__mode = "kv"})
        temp_table[i] = i
        temp_table = nil
        collectgarbage()
    end
    -- Insert deliberate calls to error() or assert(false) inside blocks that are potentially captured via pcall/xpcall
    local status, err = pcall(function()
        error("deliberate error")  -- insert call to error()
    end)
    if not status then
        print(err)
    end

    local status, err = pcall(function()
        assert(false, "deliberate assertion failure")  -- insert call to assert(false)
    end)
    if not status then
        print(err)
    end
end