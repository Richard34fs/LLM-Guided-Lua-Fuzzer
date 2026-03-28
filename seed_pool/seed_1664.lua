function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Recursion level:", n)
coroutine_recursion(n - 1)
else
error("Stack overflow!")
end
end)
local status, err = coroutine.resume(co, n)
if not status then
print(err)
end
end