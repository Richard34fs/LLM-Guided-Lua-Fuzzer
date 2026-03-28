local function create_churner()
local table_count = 0
return function()
local churner = setmetatable({}, {__mode = 'kv'})
for i = 1, 10000 do
churner[i] = {}
end
table_count = table_count + 1
if table_count % 10 == 0 then
collectgarbage()
end
end
end