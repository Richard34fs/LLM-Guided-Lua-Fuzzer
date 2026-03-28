function coroutine_recursion(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_recursion(depth - 1)
end)
coroutine.resume(co)
else
print("Recursion depth reached!")
end
end
coroutine_recursion(10000)