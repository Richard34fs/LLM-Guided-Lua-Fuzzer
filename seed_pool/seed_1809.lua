function coroutine_recursion(depth)
if depth == 0 then
return
end
local co = coroutine.create(function()
coroutine_recursion(depth - 1)
end)
coroutine.resume(co)
end
coroutine_recursion(10000)