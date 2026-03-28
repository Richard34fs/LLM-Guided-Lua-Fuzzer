function coroutine_deep_recursion(n)
local co = coroutine.create(function()
if n <= 0 then
return
else
coroutine.yield(coroutine_deep_recursion(n - 1))
end
end)
return co
end
local max_depth = 10000
local co = coroutine_deep_recursion(max_depth)