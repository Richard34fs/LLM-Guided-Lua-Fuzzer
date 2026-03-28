function coroutine_stress(n)
local co = coroutine.create(function()
return coroutine_stress(n - 1)
end)
local status, result = coroutine.resume(co)
if not status then
error(result)
end
return result
end