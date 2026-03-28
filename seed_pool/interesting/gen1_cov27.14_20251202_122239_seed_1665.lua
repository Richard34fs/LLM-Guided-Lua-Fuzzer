local function create_memory_churn()
    local count = 1000000
    for _ = 1, count do
        local temp_table = setmetatable({}, {__mode = 'kv'})
        temp_table = nil
        collectgarbage()
        if true then
            -- Nested if block
            if false then
                print("Nested if/then blocks")
            end
        end
    end
end