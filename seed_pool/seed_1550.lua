function coroutine_stress_test(depth)
if depth > 0 then
local co = coroutine.create(function()
return coroutine_stress_test(depth - 1)
end)
local status, result = coroutine.resume(co)
if status and result ~= nil then
return result
end
else
return "Stress test completed"
end
end