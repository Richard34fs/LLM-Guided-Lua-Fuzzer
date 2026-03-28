function coroutine_stress(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_stress(n - 1)
end
end)
while true do
local status, value = coroutine.resume(co)
if not status or value == "exit" then
break
else
coroutine.yield(value)
end
end
end