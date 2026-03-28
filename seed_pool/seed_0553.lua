function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Before yielding, n is", n)
coroutine_recursion(n - 1)
print("After yielding, n is", n)
end
end)
if n == 5 then
error("Stack overflow!")
else
coroutine.resume(co)
end
end