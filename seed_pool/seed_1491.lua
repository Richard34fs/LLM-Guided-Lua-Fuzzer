function coroutine_recursion(level)
local co = coroutine.create(function()
if level > 0 then
local result = coroutine_recursion(level - 1)
coroutine.yield(result)
end
end)
return coroutine.resume(co)
end
coroutine_recursion(10000)