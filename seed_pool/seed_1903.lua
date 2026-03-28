function coroutine_recursion(n)
if n > 0 then
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
if status and result then
return result + 1
else
error(result)
end
else
return 0
end
end