local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})
for i = 1, 100000 do
local obj = {id = i}
tempTable[obj] = true
obj = nil
tempTable = nil
collectgarbage()
end
end