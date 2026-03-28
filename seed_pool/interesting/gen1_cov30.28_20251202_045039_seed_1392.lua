for i = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'k'})
    for j = 1, 1000 do
        temp_table[j] = {}
    end
    -- Add a finalizer to simulate userdata
    setmetatable(temp_table, {__gc = function() print("Finalizing table") end})
    temp_table = nil
    collectgarbage()
end