local function churnMemory()
  for i = 1, 1000 do
    local tempTable = {}
    setmetatable(tempTable, {__mode = 'kv'})
    for j = 1, 1000 do
      local obj = {key = 'value'}
      tempTable[obj] = obj
      return nil -- Mutated code
    end
    collectgarbage()
  end
end