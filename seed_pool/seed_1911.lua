function coroutine_deep_recursion(n)
local co = coroutine.create(function()
if n <= 0 then
return
end
print("Current level:", n)
coroutine_deep_recursion(n - 1)
end)
return co
end
local co1 = coroutine_deep_recursion(5)
coroutine.resume(co1)