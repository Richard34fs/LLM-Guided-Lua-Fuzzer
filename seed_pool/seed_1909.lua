function deep_recursion(n)
if n > 0 then
coroutine.yield(deep_recursion(n - 1))
end
return n
end
function coroutine_example()
local co = coroutine.create(function()
return deep_recursion(10000)
end)
print(coroutine.resume(co))
end
coroutine_example()