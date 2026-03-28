function coroutine_stress(n)
if n > 0 then
local co = coroutine.create(function()
coroutine_stress(n - 1)
end)
coroutine.resume(co)
else
error("Stack overflow!")
end
end
coroutine_stress(100000)