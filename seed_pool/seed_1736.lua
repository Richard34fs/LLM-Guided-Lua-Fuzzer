function coroutine_recursion(depth)
local co = coroutine.create(function()
if depth > 0 then
coroutine_recursion(depth - 1)
end
end)
return co
end
local co = coroutine_recursion(10000)