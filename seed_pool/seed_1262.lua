local function create_churner(count)
local churners = {}
for i = 1, count do
local tmp = {}
setmetatable(tmp, {__mode = 'k'})
churners[tmp] = true
end
return function()
for obj in pairs(churners) do
obj = nil
end
collectgarbage()
end
end