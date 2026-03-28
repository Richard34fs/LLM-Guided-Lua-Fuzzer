function coroutine_recursion(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_recursion(depth - 1)
end
end)
coroutine.resume(co)
end
coroutine_recursion(50000)