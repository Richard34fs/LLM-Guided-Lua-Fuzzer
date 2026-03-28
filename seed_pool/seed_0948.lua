function coroutine_recursion(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_recursion(depth - 1)
end
end)
local status, result = coroutine.resume(co)
return result
end
coroutine_recursion(10000)