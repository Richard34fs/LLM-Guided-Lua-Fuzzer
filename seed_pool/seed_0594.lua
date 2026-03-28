function coroutine_recursion(depth)
if depth > 0 then
local co = coroutine.create(
function()
return coroutine_recursion(depth - 1)
end
)
local status, value = coroutine.resume(co)
return value
else
return depth
end
end