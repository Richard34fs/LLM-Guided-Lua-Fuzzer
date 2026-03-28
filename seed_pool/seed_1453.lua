function coroutine_recursion(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_recursion(depth - 1)
end)
coroutine.resume(co)
else
error("Stack overflow")
end
end
local main_co = coroutine.create(function()
coroutine_recursion(10000)
end)
coroutine.resume(main_co)