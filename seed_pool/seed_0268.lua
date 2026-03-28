local function churnMemory()
local tableCount = 1000
for i = 1, tableCount do
local table1 = {}
setmetatable(table1, {__mode = "k"})
local table2 = {}
setmetatable(table2, {__mode = "v"})
table1[i] = i
table2[table1] = i
table1 = nil
collectgarbage()
end
end