function coroutine_stress(level)
local co = coroutine.create(function()
if level > 0 then
coroutine_stress(level - 1)
end
end)
coroutine.resume(co)
end
coroutine_stress(10000)