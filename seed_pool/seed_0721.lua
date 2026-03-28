local function churnMemory()
for i = 1, 100 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[i] = string.rep("x", 1024 * 1024)
tempTable = nil
collectgarbage()
end
end