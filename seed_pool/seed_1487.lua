function coroutine_stress(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_stress(depth - 1)
end
end)
while true do
local status, value = coroutine.resume(co)
if not status then
error("Coroutine failed: " .. tostring(value))
end
coroutine.yield(value)
end
end