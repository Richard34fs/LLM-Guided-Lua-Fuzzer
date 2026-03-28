local function create_churner(size)
return setmetatable({}, {
__mode = 'kv',
__index = function(t, k)
local v = {}
t[k] = v
return v
end
})
end
local churner = create_churner(1024 * 1024)
for i = 1, 1024 do
churner[i] = i
collectgarbage()
end