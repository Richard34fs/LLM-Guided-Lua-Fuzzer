local function create_churner(table_count)
local tables = {}
for i = 1, table_count do
tables[i] = setmetatable({}, {__mode = 'k'})
end
return function()
for _, t in ipairs(tables) do
t[{}] = true
end
for _, t in ipairs(tables) do
t[{}] = nil
end
collectgarbage()
end
end