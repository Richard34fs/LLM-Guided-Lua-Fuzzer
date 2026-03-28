function coroutine_recursion(n)
if n > 0 then
local co = coroutine.create(function()
coroutine_recursion(n - 1)
end)
coroutine.resume(co)
else
error("Stack overflow!")
end
end
coroutine_recursion(10000)