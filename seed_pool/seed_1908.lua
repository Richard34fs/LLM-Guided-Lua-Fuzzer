function coroutine_stress_test(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress_test(depth - 1)
end
end)
local status, result = coroutine.resume(co)
return status, result
end