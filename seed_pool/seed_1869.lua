function coroutine_recursion(depth)
if depth > 0 then
local co = coroutine.create(function()
return coroutine_recursion(depth - 1)
end)
local result = coroutine.resume(co)
return result
else
return "Recursion Complete"
end
end