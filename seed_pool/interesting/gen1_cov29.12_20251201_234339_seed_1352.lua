local function churnMemory()
    local count = 10000
    for i=1,count do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "kv"})
        tempTable[i] = i
        tempTable = nil
        collectgarbage()
    end
end

local function local_insert(table, index, value)
    table[index] = value
end
churnMemory()
table.insert({1, 2, 3}, 2, "a")
local_insert({1, 2, 3}, 2, "b")