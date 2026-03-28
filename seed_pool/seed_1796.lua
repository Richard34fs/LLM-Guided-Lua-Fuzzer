function coroutine_stress(n)
local function recurse(i)
if i <= n then
local co = coroutine.create(function()
recurse(i + 1)
end)
coroutine.resume(co)
end
end
recurse(1)
end
coroutine_stress(10000)