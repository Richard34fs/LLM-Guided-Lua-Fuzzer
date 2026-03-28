function coroutine_recursion(n)
if n == 0 then
return
end
local co = coroutine.create(function()
coroutine_recursion(n - 1)
end)
local status, value = coroutine.resume(co)
if not status then
error(value)
end
end