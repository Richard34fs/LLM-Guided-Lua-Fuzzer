function coroutine_deep_recursion(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_deep_recursion(n - 1)
end
end)
return co
end
local co = coroutine_deep_recursion(10000)
coroutine.resume(co)