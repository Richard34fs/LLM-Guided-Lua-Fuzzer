function coroutine_recursion(level)
if level == 0 then
return 0
else
local co = coroutine.create(function()
return coroutine_recursion(level - 1)
end)
coroutine.resume(co)
return coroutine.yield(coroutine.status(co))
end
end