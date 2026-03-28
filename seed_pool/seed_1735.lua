function coroutine_recursion(n)
if n <= 0 then
return 0
end
local co = coroutine.create(function()
return coroutine_recursion(n - 1) + 1
end)
coroutine.resume(co)
return coroutine.yield()
end