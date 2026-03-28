local function churnMemory()
for _ = 1, 100 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 10000 do
local obj = {}
tempTable[obj] = obj
obj = nil
end
collectgarbage()
end
end