function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Before yield", n)
n = coroutine.yield(n - 1)
print("After yield", n)
end
end)
local status, result = coroutine.resume(co, n)
if not status then
error(result)
else
return result
end
end