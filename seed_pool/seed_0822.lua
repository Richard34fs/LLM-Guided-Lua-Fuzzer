function coroutine_stress_test(max_depth)
local function recurse(depth)
if depth < max_depth then
return coroutine.yield(recurse(depth + 1))
else
return "Stress test completed"
end
end
local co = coroutine.create(function()
return recurse(1)
end)
return coroutine.resume(co)
end