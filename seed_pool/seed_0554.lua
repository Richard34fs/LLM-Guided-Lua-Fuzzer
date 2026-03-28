function coroutine_stress_test(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress_test(depth - 1)
end
end)
for i = 1, depth do
co = coroutine.create(function()
coroutine.yield()
end)
assert(coroutine.resume(co))
end
end
coroutine_stress_test(5000)