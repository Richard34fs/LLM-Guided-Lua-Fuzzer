function coroutine_deep_recursion(n)
local co = coroutine.create(function()
if n > 0 then
coroutine_deep_recursion(n - 1)
end
end)
local status, value = coroutine.resume(co)
return value
end