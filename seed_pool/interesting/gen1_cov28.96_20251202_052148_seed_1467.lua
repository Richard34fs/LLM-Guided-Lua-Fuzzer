local function churnMemory()
  for i = 1, 1000 do
    local tempTable = {}
    setmetatable(tempTable, {__mode = "k"})
    tempTable[i] = {}
    tempTable[i].value = i
    tempTable[i] = nil
    collectgarbage()
  end
end
local table_insert = table.insert
table.insert = function(...)
  -- your code here
end
churnMemory()
table.insert = table_insert