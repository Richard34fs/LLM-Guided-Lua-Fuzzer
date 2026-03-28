function coroutine_recursion(n)
local co = coroutine.create(function()
if n > 0 then
print("Recursion level:", n)
coroutine_recursion(n - 1)
end
end)
return co
end
local co = coroutine_recursion(5)
coroutine.resume(co)