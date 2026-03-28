function coroutine_recursion(n)
local co = coroutine.create(
function()
if n > 0 then
local result = coroutine_recursion(n - 1)
coroutine.yield(result)
end
end
)
local status, value = coroutine.resume(co)
return value
end