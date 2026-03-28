local function create_churner()
    local temp_tables = {}
    return function()
        local temp_table = {
            field1 = "value1",
            field2 = 2,
            field3 = false,
            field4 = function()
                print("Hello, world!")
            end,
            metatable = {
                __mode = "kv"
            }
        }
        setmetatable(temp_table, temp_table.metatable)
        temp_tables[temp_table] = true
        temp_table = nil
        collectgarbage()
    end
end