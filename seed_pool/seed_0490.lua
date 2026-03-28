local function ChurnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 100000 do
local object = {id = i}
tempTable[object] = object
object = nil
if i % 100 == 0 then
collectgarbage()
end
end
end