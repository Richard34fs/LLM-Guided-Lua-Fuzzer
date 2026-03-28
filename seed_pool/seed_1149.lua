function churn_memory()
for i = 1, 100 do
local t = {}
setmetatable(t, {__mode = "k"})
for j = 1, 100 do
t[{}]= j
end
collectgarbage()
end
end