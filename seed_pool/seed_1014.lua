function coroutine_recursion(n)
if n > 0 then
local co = coroutine.create(function()
return coroutine_recursion(n - 1)
end)
local status, result = coroutine.resume(co)
if status then
return result
else
error(result)
end
else
return n
end
end