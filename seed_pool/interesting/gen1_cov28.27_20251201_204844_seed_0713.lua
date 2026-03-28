local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = 'kv'})
    for i = 1, 100000 do
        local obj = {id = i, data = {}}
        tempTable[obj] = obj.data
        tempTable[obj] = nil
        if i % 1000 == 0 then
            collectgarbage()
        end
    end
end