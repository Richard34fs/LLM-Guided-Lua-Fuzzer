function coroutine_recursion(level)
local co = coroutine.create(function()
if level > 0 then
coroutine_recursion(level - 1)
end
end)
return co
end