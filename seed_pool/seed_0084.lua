function coroutine_recursion(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_recursion(depth - 1)
end)
coroutine.resume(co)
else
print("Recursion reached the base case at depth 0")
end
end
coroutine_recursion(10000)