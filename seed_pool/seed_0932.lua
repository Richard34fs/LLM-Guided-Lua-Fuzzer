function coroutine_func(n)
if n > 0 then
local co = coroutine.create(
function()
return coroutine_func(n - 1)
end
)
local result = coroutine.resume(co)
return result
else
return n
end
end