function create_churner(size)
local churner = {}
setmetatable(churner, {__mode = 'k'})
for i = 1, size do
churner[i] = {data = i}
end
return function()
for i, v in pairs(churner) do
v.data = nil
churner[i] = nil
end
collectgarbage()
end
end