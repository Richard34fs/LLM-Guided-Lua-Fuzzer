function coroutine_stress(depth)
if depth > 0 then
local co = coroutine.create(
function()
return coroutine_stress(depth - 1)
end
)
local status, result = coroutine.resume(co)
return result
else
return "deep recursion"
end
end