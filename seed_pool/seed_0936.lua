local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})
for i = 1, 1000 do
local data = {i}
tempTable[data] = true
if i % 5 == 0 then
data = nil
collectgarbage()
end
end
end