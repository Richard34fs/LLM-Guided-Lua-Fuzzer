local function churnMemory()
for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[i] = i
tempTable = nil
collectgarbage()
end
end