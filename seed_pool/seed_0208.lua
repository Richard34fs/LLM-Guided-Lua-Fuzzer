function coroutine_stress(n)
if n <= 0 then
return
end
local co = coroutine.create(function()
coroutine_stress(n - 1)
end)
coroutine.resume(co)
end
coroutine_stress(10000)