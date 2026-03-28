function coroutine_recursion(level)
if level > 0 then
local co = coroutine.create(function()
return coroutine_recursion(level - 1)
end)
local result = coroutine.resume(co)
return result
else
return "Recursion reached depth of " .. level
end
end
local result = coroutine_recursion(5)
print(result)