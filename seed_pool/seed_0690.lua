local temp_tables = {}
for i = 1, 100 do
local t = {}
setmetatable(t, {__mode = 'k'})
temp_tables[i] = t
end
for i = 1, #temp_tables do
temp_tables[i] = nil
collectgarbage()
end