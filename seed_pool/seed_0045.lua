function coroutine_stress_test(n)
if n > 0 then
local co = coroutine.create(function()
coroutine_stress_test(n - 1)
end)
coroutine.resume(co)
else
error("Stack overflow!")
end
end
coroutine_stress_test(10000)