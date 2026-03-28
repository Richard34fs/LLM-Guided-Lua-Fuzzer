function coroutine_recursion(n)
if n > 0 then
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
return result
else
return 1
end
end