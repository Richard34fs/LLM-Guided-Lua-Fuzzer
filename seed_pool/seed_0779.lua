local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 10000 do
local obj = {key = i, value = "value" .. i}
tempTable[obj.key] = obj
obj = nil
end
for i = 1, 10000 do
collectgarbage()
end
end