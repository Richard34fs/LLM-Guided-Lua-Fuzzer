local temp_tables = {}
for i = 1, 100 do
local t = {}
setmetatable(t, { __mode = "kv" })
temp_tables[i] = t
end
for i = 1, 100 do
for j = 1, 100 do
temp_tables[i][j] = j
end
end
temp_tables = nil
for i = 1, 100 do
collectgarbage()
end