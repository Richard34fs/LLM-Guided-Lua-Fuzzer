function coroutine_stress_test(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_stress_test(depth - 1)
end)
coroutine.resume(co)
else
error("Stack overflow!")
end
end
local main_co = coroutine.create(function()
coroutine_stress_test(100000)
end)
coroutine.resume(main_co)