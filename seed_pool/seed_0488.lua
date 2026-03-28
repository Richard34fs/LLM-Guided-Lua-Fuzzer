function coroutine_recursion(n)
if n == 0 then
return 1
else
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
return result
end
end