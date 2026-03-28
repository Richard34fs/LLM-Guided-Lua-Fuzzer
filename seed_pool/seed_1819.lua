function coroutine_deep_recursion(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_deep_recursion(n - 1)
end
end)
while true do
local status, value = coroutine.resume(co)
if not status then
error(value)
end
coroutine.yield(value)
end
end