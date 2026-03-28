local function churnMemory()
local count = 100000
for i = 1, count do
local tempTable = setmetatable({}, {__mode = "kv"})
tempTable.key = tempTable
tempTable = nil
collectgarbage()
end
end