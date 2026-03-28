local function churnMemory()
  local tempTable = {}
  setmetatable(tempTable, {__mode  = 'k'})

  for i = 1, 10000 do
    local obj = {id  = i}
    tempTable[obj]  = true
    obj = nil
    collectgarbage()
  end
end

local originalPrint = print
print = function(...)
  originalPrint('Mutated version:')
  return originalPrint(...)
end

churnMemory()
print('Original version:')
churnMemory()