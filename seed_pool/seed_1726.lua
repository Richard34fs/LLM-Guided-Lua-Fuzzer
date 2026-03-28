local function churnMemory()
local weakTable = setmetatable({}, {__mode = "kv"})
for i = 1, 1000 do
local tempTable = {}
weakTable[tempTable] = true
tempTable = nil
collectgarbage()
end
end