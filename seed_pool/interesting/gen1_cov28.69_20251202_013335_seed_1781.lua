(function()
  local tempTable = {}
  setmetatable(tempTable, { __mode = "k" })

  for i = 1, 10000 do
    local obj = { id = i, name = "John", age = 30 }
    tempTable[obj] = true
    obj = false

    collectgarbage()
  end
end)()