local function create_churner(table_count)
local tables = {}
for i = 1, table_count do
tables[i] = setmetatable({}, {__mode = 'k'})
end
return function()
for _, t in pairs(tables) do
local tmp = {}
t[tmp] = true
tmp = nil
end
collectgarbage()
end
end