function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Recursion level:", n)
coroutine_recursion(n - 1)
end
end)
local status, err = coroutine.resume(co)
if not status then
error(err)
end
end
coroutine_recursion(10)