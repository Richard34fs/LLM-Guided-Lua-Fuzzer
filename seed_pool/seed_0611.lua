function coroutine_recursion(n)
local co = coroutine.create(function()
return n + coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
if not status then
error(result)
else
return result
end
end