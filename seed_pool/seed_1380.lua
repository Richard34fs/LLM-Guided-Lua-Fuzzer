local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 10000 do
local obj = {id = i}
tempTable[obj] = true
obj = nil
collectgarbage()
end
end