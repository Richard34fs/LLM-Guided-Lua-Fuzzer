function coroutine_nesting(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_nesting(depth - 1)
end)
coroutine.resume(co)
else
error("Stack overflow")
end
end
coroutine_nesting(10000)