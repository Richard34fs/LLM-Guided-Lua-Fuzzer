local function churnMemory()
for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for j = 1, 1000 do
local key = {}
local value = {}
tempTable[key] = value
key = nil
value = nil
end
collectgarbage()
end
end