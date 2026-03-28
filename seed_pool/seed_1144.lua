function churnMemory()
local weakTable = setmetatable({}, {__mode = "kv"})
while true do
local tempTable = {}
for i = 1, 100000 do
tempTable[i] = i
end
weakTable[tempTable] = true
tempTable = nil
collectgarbage()
end
end