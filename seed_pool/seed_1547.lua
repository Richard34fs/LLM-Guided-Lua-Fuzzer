local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})
for i = 1, 1000 do
local object = {key = i}
tempTable[object] = object
object = nil
collectgarbage()
end
end