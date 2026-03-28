function coroutine_stress_test(depth)
if depth > 0 then
local co = coroutine.create(function()
return coroutine_stress_test(depth - 1)
end)
local status, result = coroutine.resume(co)
return result
else
return "Coroutine stress test completed"
end
end