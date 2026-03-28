function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Calling coroutine_recursion with n - 1")
coroutine_recursion(n - 1)
else
error("Stack overflow!")
end
end)
local status, err = coroutine.resume(co)
if not status then
print("Coroutine failed: " .. err)
end
end
coroutine_recursion(10000)