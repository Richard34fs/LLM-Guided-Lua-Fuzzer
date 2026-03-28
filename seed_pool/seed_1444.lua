function coroutine_recursion(level)
local co = coroutine.create(function()
if level > 0 then
local value = coroutine_recursion(level - 1)
return value * 2
else
return 1
end
end)
local status, result = coroutine.resume(co)
assert(status, result)
return result
end