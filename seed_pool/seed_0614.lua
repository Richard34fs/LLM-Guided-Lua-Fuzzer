function coroutine_stress_test(depth)
if depth > 0 then
local co = coroutine.create(function()
return coroutine_stress_test(depth - 1)
end)
local status, result = coroutine.resume(co)
assert(status, result)
return result
else
return "Stress test completed"
end
end