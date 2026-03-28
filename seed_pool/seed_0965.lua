local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 100000 do
local obj = {data = i}
tempTable[obj] = true
obj = nil
end
collectgarbage()
end