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

-- shadow the print function with a local version
local print = function(...)
    -- invoke the global print function
    _G.print(...)

    -- output a message in the local scope
    print("This is a local print")
end
churn_memory()