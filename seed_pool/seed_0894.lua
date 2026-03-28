function coroutine_recursion(n)
if n > 0 then
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, value = coroutine.resume(co)
return value
else
return n
end
end