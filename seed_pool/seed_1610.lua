local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 10000 do
local object = {id = i}
tempTable[object] = object
object = nil
collectgarbage()
end
end