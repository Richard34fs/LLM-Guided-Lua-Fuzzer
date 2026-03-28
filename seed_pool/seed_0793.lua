local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local tmp = {}
setmetatable(tmp, {__mode = "k"})
temp_tables[i] = tmp
end
for _, v in pairs(temp_tables) do
v = nil
end
collectgarbage()
end