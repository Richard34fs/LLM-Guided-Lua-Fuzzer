function coroutine_stress(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_stress(depth - 1)
end)
coroutine.resume(co)
else
error("Stack overflow!")
end
end
coroutine_stress(10000)