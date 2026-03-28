function coroutine_test(n)
if n > 0 then
local co = coroutine.create(function()
return coroutine_test(n - 1)
end)
local status, result = coroutine.resume(co)
return result
else
return n
end
end