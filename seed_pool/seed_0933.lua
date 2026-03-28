function coroutine_recursion(n)
local co = coroutine.create(function()
if n <= 0 then
return 1
else
return n * coroutine.yield(coroutine_recursion(n - 1))
end
end)
local status, result = coroutine.resume(co)
if not status then
error(result)
end
return result
end