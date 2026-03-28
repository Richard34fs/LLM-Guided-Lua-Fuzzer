function coroutine_stress_test(max_depth)
local function recurse(depth)
if depth >= max_depth then
return
end
local co = coroutine.create(function()
recurse(depth + 1)
end)
coroutine.resume(co)
end
recurse(0)
end