local function churnMemory()
  for i = 1, 1000 do
    local tempTable = {}
    setmetatable(tempTable, {__mode = 'k'})
    tempTable[i] = i * 2
    table.insert(tempTable, i)  -- Insert the value at the end of the table
    print(table.concat(tempTable, ", "))  -- Join all elements in a string separated by commas and spaces
    tempTable[i] = nil
    collectgarbage()
  end
end