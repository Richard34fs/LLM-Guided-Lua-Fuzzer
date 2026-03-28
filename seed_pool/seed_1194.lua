function coroutine_recursion(n)
if n == 0 then
return
end
local co = coroutine.create(function()
coroutine_recursion(n - 1)
end)
local status, err = coroutine.resume(co)
if not status then
error(err)
end
end