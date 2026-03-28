function coroutine_recursion(depth)
if depth > 0 then
local co = coroutine.create(function()
coroutine_recursion(depth - 1)
end)
coroutine.resume(co)
else
return "Recursion complete"
end
end
local co = coroutine.create(function()
print(coroutine_recursion(100))
end)
coroutine.resume(co)