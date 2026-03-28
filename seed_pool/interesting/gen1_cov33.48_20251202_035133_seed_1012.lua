local table_insert = table.insert  -- define a closure for table.insert
local ipairs_original = ipairs      -- define a closure for original ipairs
local function print_original(...) -- define a closure for original print
  return print(...)
end
local function churnMemory()
for i = 1, 1000 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = 'k'})
for j = 1, 1000 do
table_insert(tmpTable, {})        -- call local version of table.insert
end
tmpTable = nil
collectgarbage()
end
end
churnMemory()
print_original("Hello world!")    -- call global version of print
for k, v in ipairs_original({1, 2, 3}) do
  print(k, v)
end