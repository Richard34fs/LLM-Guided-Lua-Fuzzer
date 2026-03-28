for i = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__gc = function()
        -- Finalizer code goes here
    end})
    for j = 1, 1000 do
        temp_table[j] = {}
    end
    temp_table = nil
    collectgarbage()
end