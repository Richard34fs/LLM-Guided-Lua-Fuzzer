function deep_recursion(n)
if n > 0 then
coroutine.yield(deep_recursion(n - 1))
end
return n
end
local co = coroutine.create(function()
return deep_recursion(10000)
end)
while true do
local status, value = coroutine.resume(co)
if not status then
break
end
end