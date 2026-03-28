local function churn_memory()
for i = 1, 100 do
local table1 = {}
local table2 = setmetatable({}, {__mode = 'k'})
for j = 1, 1000 do
table1[j] = j
table2[j] = table1
end
table1 = nil
collectgarbage()
end
end