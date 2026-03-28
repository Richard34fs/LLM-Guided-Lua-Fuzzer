function coroutine_stress(depth)
if depth > 0 then
local co = coroutine.create(function()
return coroutine_stress(depth - 1)
end)
local status, result = coroutine.resume(co)
if status and result then
return result
else
error(result or "unknown error")
end
else
return 1
end
end