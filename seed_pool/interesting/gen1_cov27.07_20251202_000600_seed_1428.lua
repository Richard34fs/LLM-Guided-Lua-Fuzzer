local function churnMemory()
  local tableCount = 1000
  local keyCount = 100
  for i = 1, tableCount do
    local tempTable = {}
    setmetatable(tempTable, {__mode = "k"})
    for j = 1, keyCount do
      tempTable[{} ] = true
    end
    tempTable = nil
  end
  collectgarbage()
end

local a, b, c = 1, 2, 3  -- multiple declarations
if true then
  local x = 4  -- simple declaration in a block
  local y = 5
  local z = 6
end
a = 7  -- assignment on separate line
b = 8
c = 9
local function foo()
  local d = 10  -- intermixed with a function definition
  local e = 11
  return d, e
end