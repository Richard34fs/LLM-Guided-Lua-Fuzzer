local function churnMemory()
for _ = 1, 10 do
local tempTable = {}
setmetatable(tempTable, { __mode = 'kv' })
for i = 1, 10000 do
tempTable[i] = { data = i }
end
tempTable = nil
collectgarbage()
end
end