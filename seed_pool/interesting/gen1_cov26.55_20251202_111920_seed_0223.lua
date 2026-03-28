function churn_memory()
    local t = {}
    setmetatable(t, {__mode = "kv"})

    while true do
        local a = {}
        t[a] = true

        a = nil
        collectgarbage()

        return -- Add a return statement to make the function return multiple values
    end
end