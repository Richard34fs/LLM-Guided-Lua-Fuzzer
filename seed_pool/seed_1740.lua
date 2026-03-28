function coroutine_recursion(level)
local co = coroutine.create(function()
if level > 0 then
coroutine_recursion(level - 1)
end
end)
local status, result = coroutine.resume(co)
return result
end
coroutine_recursion(10000)