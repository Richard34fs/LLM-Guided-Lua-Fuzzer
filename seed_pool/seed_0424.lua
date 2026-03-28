function coroutine_recursion(n)
if n > 0 then
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
return coroutine.resume(co)
else
return "Done"
end
end
coroutine_recursion(10000)