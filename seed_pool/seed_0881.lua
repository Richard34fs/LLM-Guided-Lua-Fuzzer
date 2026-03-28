function coroutine_stress(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress(depth - 1)
end
end)
coroutine.resume(co)
end
coroutine_stress(10000)