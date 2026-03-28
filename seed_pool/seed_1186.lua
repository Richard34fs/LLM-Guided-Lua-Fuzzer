function coroutine_recursion(n)
if n == 0 then
return
end
local co = coroutine.create(function()
coroutine_recursion(n - 1)
end)
coroutine.resume(co)
end
coroutine_recursion(10000)