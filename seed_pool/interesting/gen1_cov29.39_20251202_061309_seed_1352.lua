local function churnMemory()
    local count = 10000
    for i=1,count do
        local tempTable = {
            key = "value",
            func = function(x) return x * 2 end
        }
        setmetatable(tempTable, {__mode = "kv"})
        tempTable[i] = i
        tempTable.key = nil
        tempTable.func = nil
        tempTable = nil
        collectgarbage()
    end
end
churnMemory()