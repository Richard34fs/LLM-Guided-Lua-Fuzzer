local temp_tables = {}
for _ = 1, 100 do
local temp_table = setmetatable({}, {__mode = "kv"})
temp_tables[#temp_tables + 1] = temp_table
for i = 1, 1000 do
temp_table[i] = i
end
temp_table = nil
end
for _ = 1, 10 do
collectgarbage()
end