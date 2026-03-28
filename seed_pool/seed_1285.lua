local function churnMemory()
local tempTable = {}
setmetatable(tempTable, { __mode = 'kv' })
for i = 1, 1000 do
local obj = { id = i }
tempTable[obj] = obj
end
for k, v in pairs(tempTable) do
tempTable[k] = nil
end
collectgarbage()
end
churnMemory()