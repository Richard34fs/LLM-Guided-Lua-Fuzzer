function coroutine_recursion(n)
if n <= 0 then
return n
end
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
return result
end
coroutine_recursion(10000)