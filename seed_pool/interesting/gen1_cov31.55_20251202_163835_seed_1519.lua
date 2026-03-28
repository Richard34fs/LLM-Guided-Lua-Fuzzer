local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})
for i = 1, 10000 do
local obj = {id = i}
tempTable[obj] = true
obj = nil
end
collectgarbage()
end
for _ = 1, 5 do
churnMemory()
end
local table_insert = table.insert
table.insert = function(...)
print("Shadowing insert")
return table_insert(...)
end
table_insert({1,2,3},4)
table.insert({1,2,3},4)