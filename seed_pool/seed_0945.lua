function coroutine_recursion(level)
if level > 0 then
local co = coroutine.create(
function()
return coroutine_recursion(level - 1)
end
)
return coroutine.resume(co)
else
return "Recursion depth reached"
end
end