function coroutine_recursion(n)
if n == 0 then
return 1
end
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
if not status then
error(result)
end
return result
end