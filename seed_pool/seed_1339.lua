local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local tmp = {}
setmetatable(tmp, {__mode = "k"})
temp_tables[tmp] = true
tmp = nil
collectgarbage()
end
end