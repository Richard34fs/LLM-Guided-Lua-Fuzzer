local function churnMemory()
local tableCount = 100
local keyCount = 1000
for i = 1, tableCount do
local table = {}
setmetatable(table, {__mode = "k"})
for j = 1, keyCount do
table[j] = {}
end
table = nil
end
collectgarbage()
end