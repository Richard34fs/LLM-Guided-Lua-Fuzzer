function coroutine_recursion(n)
local co = coroutine.create(
function()
if n > 0 then
coroutine_recursion(n - 1)
end
end
)
local status, value = coroutine.resume(co)
if not status then
error(value)
end
end