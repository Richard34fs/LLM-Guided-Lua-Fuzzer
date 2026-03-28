function coroutine_recursion(n)
local co = coroutine.create(function()
if n <= 0 then
return
else
coroutine_recursion(n - 1)
coroutine.yield()
coroutine_recursion(n - 1)
end
end)
return co
end