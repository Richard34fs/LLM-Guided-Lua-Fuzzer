function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_recursion(n - 1)
end
end)
return co
end
local co = coroutine_recursion(100000)
coroutine.resume(co)