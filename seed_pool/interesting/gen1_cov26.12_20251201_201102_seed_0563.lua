local function create_churner()
    local churner = {}
    setmetatable(churner, {__mode = "kv"})
    return function()
        do
            local temp_table = {}
            setmetatable(temp_table, {__mode = "kv"})
            temp_table[1] = 1
            temp_table[2] = 2
            temp_table[3] = 3
            churner[temp_table] = true
            temp_table = nil
        end
        collectgarbage()
    end
end