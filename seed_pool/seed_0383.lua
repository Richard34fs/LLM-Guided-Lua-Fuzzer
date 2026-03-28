function coroutine_stress(depth)
if depth == 0 then
return
end
local co = coroutine.create(function()
coroutine_stress(depth - 1)
end)
local status, result = coroutine.resume(co)
if not status then
error(result)
end
end