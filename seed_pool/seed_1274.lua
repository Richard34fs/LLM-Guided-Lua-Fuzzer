local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 100000 do
local obj = {key = ("object" .. i), value = ("value" .. i)}
tempTable[obj.key] = obj
obj = nil
end
collectgarbage()
end