local function create_churner(num_tables)
local tables = {}
for i = 1, num_tables do
tables[i] = setmetatable({}, {__mode = "k"})
end
return function()
for i = 1, #tables do
tables[i][{}] = {}
end
for i = 1, #tables do
tables[i] = nil
end
collectgarbage()
end
end