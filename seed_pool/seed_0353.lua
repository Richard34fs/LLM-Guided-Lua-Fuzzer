function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Recursion depth:", n)
coroutine_recursion(n - 1)
end
end)
coroutine.resume(co)
end
coroutine_recursion(10000)