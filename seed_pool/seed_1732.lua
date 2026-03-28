function coroutine_stress(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress(depth - 1)
end
end)
return co
end
local depth = 10000
local co = coroutine_stress(depth)