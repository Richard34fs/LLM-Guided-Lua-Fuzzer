function coroutine_stress(deep)
if deep <= 0 then
return
end
local co = coroutine.create(function()
coroutine_stress(deep - 1)
end)
coroutine.resume(co)
end
coroutine_stress(10000)