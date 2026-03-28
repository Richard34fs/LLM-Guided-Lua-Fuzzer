function coroutine_recursion(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_recursion(depth - 1)
end
end)
local status, value = coroutine.resume(co)
return value
end
coroutine_recursion(10000)