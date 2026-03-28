local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "kv"})
    for i = 1, 100000 do
        local obj = {id = i}
        tempTable[obj] = obj
        obj = nil
        collectgarbage()
    end
end
local print = print -- Shadow the global print function
print("Hello, world!") -- Call the local print function
churnMemory()