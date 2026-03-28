function create_memory_churn()
    local temp_tables = {}
    for i = 1, 100 do
        local t = setmetatable({}, {
            __gc = function(t)
                print("Table collected")
            end
        })
        for j = 1, 1000 do
            t[j] = math.random()
        end
        temp_tables[#temp_tables + 1] = t
    end
    temp_tables = nil
    collectgarbage()
end